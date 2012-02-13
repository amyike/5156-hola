package com.nianmi.member.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.nianmi.member.common.CommonHelper;
import com.nianmi.member.common.Page;
import com.nianmi.member.exception.BizException;
import com.nianmi.member.pojo.TsUser;
import com.nianmi.member.pojo.TsXqNotice;
import com.nianmi.member.pojo.TsXqTopic;
import com.nianmi.member.pojo.TsXqtable;
import com.nianmi.member.pojo.TsXqtopicFavorite;
import com.nianmi.member.pojo.TsXqtopicReply;
import com.nianmi.member.service.impl.UserGroupLinkService;
import com.nianmi.member.service.impl.UserService;
import com.nianmi.member.service.impl.WeiboFollowService;
import com.nianmi.member.service.impl.XqNoticeService;
import com.nianmi.member.service.impl.XqTopicService;
import com.nianmi.member.service.impl.XqtopicFavoriteService;
import com.nianmi.member.service.impl.XqtopicReplyService;

/**
 * 小区
 * 
 * @author yike
 * 
 */
@Controller
@SessionAttributes("user")
@RequestMapping("/community")
public class CommunityController extends BaseController {

	@Autowired
	private UserService userService;
	@Autowired
	private XqtopicReplyService xqtopicReplyService;
	@Autowired
	private XqNoticeService xqNoticeService;
	@Autowired
	private XqTopicService xqTopicService;
	@Autowired
	private XqtopicFavoriteService xqtopicFavoriteService;
	@Autowired
	private WeiboFollowService weiboFollowService;
	@Autowired
	private UserGroupLinkService userGroupLinkService;

	// 小区首页
	@RequestMapping(method = RequestMethod.GET)
	public String index(Model model, Page<TsXqTopic> page,
			@ModelAttribute("user") TsUser user,
			@RequestParam(defaultValue = "0") int buid,
			@RequestParam(defaultValue = "") String act) {
		try {
			user = userService.find(user.getUid());
			model.addAttribute("user", user);

			model.addAttribute("act", act);

			int xqid = 0;
			Set<Integer> tids = null;
			Set<Integer> uids = null;

			Set<Integer> repliesIds = null;
			if ("follow".equals(act)) { // 关注列表
				uids = weiboFollowService.findFoolowUidsByUid(user.getUid());
				if (uids == null) {
					uids = new HashSet<>(1);
					uids.add(0);
				}
			} else if ("favorite".equals(act)) { // 喜欢列表
				tids = xqtopicFavoriteService.findFavoriteTopicIdsByUid(user
						.getUid());
				if (tids == null) {
					tids = new HashSet<>(1);
					tids.add(0);
				}
			} else if ("replies".equals(act)) { // 被回应列表
				// 个人的所有帖子
				repliesIds = xqtopicReplyService.findUnreadTids(user.getUid());
				tids = repliesIds;
				if (tids == null) {
					tids = new HashSet<>(1);
					tids.add(0);
				}
			} else {// default
				// 用户所在小区信息
				TsXqtable xqtable = user.getXqtable();
				// 用户未填写小区信息
				if (xqtable != null) {
					xqid = xqtable.getXqId();
					// 居住人数
					model.addAttribute("personCount",
							userService.countByXqid(xqid));

					// 小区公告
					List<TsXqNotice> xqNotices = xqNoticeService.find(xqid,
							page.getFirst(), page.getPageSize());
					if (!xqNotices.isEmpty())
						model.addAttribute("xqnotice", xqNotices.iterator()
								.next());

					// right 3小区公告
					model.addAttribute("xq3Notice",
							xqNoticeService.find(xqid, 0, 2));
				}
			}
			//
			int total = xqTopicService.count(buid, xqid, tids, uids);
			if (total > 0) {
				page.rebuild(total, "community.htm", 5);
				List<TsXqTopic> xqTopics = xqTopicService.find(buid, xqid,
						tids, uids, page.getFirst(), page.getPageSize());
				if (xqTopics != null && !xqTopics.isEmpty()) {
					model.addAttribute("page", page.setElements(xqTopics));
				}
			}

			// 是否物业
			model.addAttribute("isWuye",
					userGroupLinkService.userIsGroup(user.getUid(), 3));

			// 小区内容
			List<TsXqTopic> xq3Topic = xqTopicService.find(0, xqid, null, null,
					0, 2);
			model.addAttribute("xq3Topic", xq3Topic);

			// 喜欢列表
			Set<Integer> favoriteTopicIds = xqtopicFavoriteService
					.findFavoriteTopicIdsByUid(user.getUid());
			if (favoriteTopicIds != null && !favoriteTopicIds.isEmpty()) {
				model.addAttribute("favoriteTopicIds", favoriteTopicIds);
			}
			// 关注列表
			Set<Integer> followUids = weiboFollowService
					.findFoolowUidsByUid(user.getUid());
			if (followUids != null && !followUids.isEmpty()) {
				model.addAttribute("followUids", followUids);
			}
			// 回应列表
			if (repliesIds == null) {
				repliesIds = xqtopicReplyService.findUnreadTids(user.getUid());
			}
			model.addAttribute("repliesIds", repliesIds);
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "/community/community";
	}

	// init 发布小区信息
	@RequestMapping(value = "publish", method = RequestMethod.GET)
	public String communityPublish(Model model,
			@RequestParam(defaultValue = "0") int id) {
		try {
			// init 编辑
			if (id != 0)
				model.addAttribute("xqtopic", xqTopicService.find(id));
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "/community/community_publish";
	}

	// 发布小区信息
	@RequestMapping(value = "publish", method = RequestMethod.POST)
	public String communityPublish(@ModelAttribute("user") TsUser user,
			TsXqTopic xqTopic, Model model) {
		try {
			if (xqTopic.getId() == 0) {// insert
				xqTopic.setUser(user);
				xqTopic.setXqtable(user.getXqtable());
				xqTopic.setTime(new Date());
				xqTopicService.save(xqTopic);
			} else {// update
				TsXqTopic _xqTopic = xqTopicService.find(xqTopic.getId());
				_xqTopic.setTitle(xqTopic.getTitle());
				_xqTopic.setContent(xqTopic.getContent());
				xqTopicService.update(_xqTopic);
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "redirect:/community.htm";
	}

	@RequestMapping(value = "delete", method = RequestMethod.GET)
	public String communityDelete(@RequestParam(defaultValue = "0") int id) {
		try {
			if (id != 0)
				xqTopicService.delete(id);
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "redirect:/community.htm";
	}

	/**
	 * 小区公告首页
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/bulletin", method = RequestMethod.GET)
	public String bulletin(Model model, @ModelAttribute("user") TsUser user,
			Page<TsXqNotice> page) {
		try {
			user = userService.find(user.getUid());

			// 是否显示“更多小区公告”链接
			model.addAttribute("flag", 1);

			// 小区信息
			TsXqtable xqtable = user.getXqtable();
			// 用户未填写小区信息
			if (xqtable != null) {
				model.addAttribute("xqtable", xqtable);

				// right 3 小区公告
				model.addAttribute("xq3Notice", xqNoticeService.find(0, 3));
			}

			// 小区公告
			List<TsXqNotice> xqNotices = xqNoticeService.find(
					xqtable.getXqId(), page.getFirst(), page.getPageSize());
			model.addAttribute("xqNotices", xqNotices);

			if (!xqNotices.isEmpty())
				model.addAttribute("xqnotice", xqNotices.iterator().next());

			// 是否物业
			model.addAttribute("isWuye",
					userGroupLinkService.userIsGroup(user.getUid(), 3));

			// 小区内容
			model.addAttribute("xq3Topic", xqTopicService.find(0, 2));

			// 居住人数
			model.addAttribute("personCount",
					userService.countByXqid(xqtable.getXqId()));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "community/community_bulletin";
	}

	@RequestMapping(value = "/bulletin/delete", method = RequestMethod.GET)
	public String bulletinDelete(@RequestParam(defaultValue = "0") int id) {
		try {
			if (id != 0)
				xqNoticeService.delete(id);
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "redirect:/community/bulletin.htm";
	}

	// init 发布小区公告
	@RequestMapping(value = "/bulletin/publish", method = RequestMethod.GET)
	public String bulletinPublish(@RequestParam(defaultValue = "0") int id,
			Model model) {
		try {
			// init 编辑
			if (id != 0)
				model.addAttribute("xqnotice", xqNoticeService.find(id));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/community/bulletin_publish";
	}

	// 发布小区公告
	@RequestMapping(value = "/bulletin/publish", method = RequestMethod.POST)
	public String bulletinPublish(@ModelAttribute("user") TsUser user,
			TsXqNotice xqNotice) {
		try {
			if (xqNotice.getId() == 0) {// 添加
				TsXqtable xqtable = user.getXqtable();
				xqNotice.setXqtable(xqtable);
				xqNotice.setTime(new Date());
				xqNotice.setUser(user);
				xqNoticeService.save(xqNotice);
			} else {// 修改
				TsXqNotice _xqNotice = xqNoticeService.find(xqNotice.getId());
				_xqNotice.setTitle(xqNotice.getTitle());
				_xqNotice.setContent(xqNotice.getContent());
				xqNoticeService.update(_xqNotice);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/community/bulletin.htm";
	}

	// init 小区内容回帖 ajax
	@RequestMapping(value = "/replies", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> replies(int id) {
		Map<String, Object> map = new HashMap<>();
		try {
			Set<TsXqtopicReply> xqtopicReplies = xqTopicService.find(id)
					.getXqtopicReplies();
			List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
			for (TsXqtopicReply xqtopicReply : xqtopicReplies) {
				Map<String, Object> a = new HashMap<>();
				a.put("uid", xqtopicReply.getUser().getUid());
				a.put("uname", xqtopicReply.getUser().getUname());
				a.put("content", xqtopicReply.getContent());
				a.put("time", CommonHelper.DATE_FORMAT_CH.format(xqtopicReply
						.getTime()));
				list.add(a);
			}
			map.put("result", 1);
			map.put("data", list);
		} catch (BizException e) {
			e.printStackTrace();
		}
		return map;
	}

	// init 小区内容回帖 ajax
	@RequestMapping(value = "/replies", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> replies(TsXqtopicReply xqtopicReply,
			@ModelAttribute("user") TsUser user) {
		Map<String, Object> map = new HashMap<>();
		try {
			xqtopicReply.setTime(new Date());
			xqtopicReply.setUser(user);
			xqtopicReplyService.save(xqtopicReply);
			map.put("result", "1");
			map.put("msg", "信息发送成功！");
		} catch (BizException e) {
			e.printStackTrace();
		}
		return map;
	}

	// 喜欢
	@RequestMapping(value = "/favorite", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> favorite(@ModelAttribute("user") TsUser user,
			TsXqtopicFavorite tsXqtopicFavorite,
			@RequestParam(defaultValue = "0") int flag) {
		Map<String, Object> map = new HashMap<>();
		try {
			if (flag == 1) {// 喜欢
				if (user.getUid() == tsXqtopicFavorite.getUid()) {
					map.put("result", 0);
					map.put("msg", "不能喜欢自己哦！");
					return map;
				}
				tsXqtopicFavorite.setUid(user.getUid());
				xqtopicFavoriteService.save(tsXqtopicFavorite);
				map.put("result", 1);
				map.put("msg", "喜欢成功！");
			} else {// 取消喜欢
				xqtopicFavoriteService.delete(user.getUid(),
						tsXqtopicFavorite.getXqtopicid());
				map.put("result", 1);
				map.put("msg", "成功取消喜欢！");
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		return map;
	}

	@RequestMapping(value = "/xqtoppicNews", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> xqtoppicNews(
			@ModelAttribute("user") TsUser user,
			@RequestParam(defaultValue = "0") int maxId) {
		Map<String, Object> map = new HashMap<>();
		try {
			if (maxId == 0) {
				map.put("maxId", xqTopicService.maxId());
			} else {
				map.put("countNews", xqTopicService.countNews(0, 0, maxId));

				// 被回复的帖子
				Set<Integer> xqtids = xqtopicReplyService.findUnreadTids(user
						.getUid());
				map.put("unreadTids", xqtids == null ? 0 : xqtids.size());
			}
			map.put("result", 1);
		} catch (BizException e) {
			e.printStackTrace();
		}
		return map;
	}
}