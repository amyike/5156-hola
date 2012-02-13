package com.nianmi.member.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
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
import com.nianmi.member.pojo.TsCityCategory;
import com.nianmi.member.pojo.TsCityTopic;
import com.nianmi.member.pojo.TsCitytopicFavorite;
import com.nianmi.member.pojo.TsCitytopicReply;
import com.nianmi.member.pojo.TsUser;
import com.nianmi.member.service.impl.CityCategoryService;
import com.nianmi.member.service.impl.CityTopicFavoriteService;
import com.nianmi.member.service.impl.CityTopicReplyService;
import com.nianmi.member.service.impl.CityTopicService;
import com.nianmi.member.service.impl.UserGroupLinkService;
import com.nianmi.member.service.impl.UserService;
import com.nianmi.member.service.impl.WeiboFollowService;

/**
 * 同城
 * 
 * @author yike
 * 
 */
@Controller
@SessionAttributes("user")
@RequestMapping("/city")
public class CityController extends BaseController {

	@Autowired
	private UserService userService;
	@Autowired
	private CityTopicService cityTopicService;
	@Autowired
	private CityCategoryService cityCategoryService;
	@Autowired
	private WeiboFollowService weiboFollowService;
	@Autowired
	private CityTopicFavoriteService cityTopicFavoriteService;
	@Autowired
	private CityTopicReplyService cityTopicReplyService;
	@Autowired
	private UserGroupLinkService userGroupLinkService;

	// 同城首页
	@RequestMapping(method = RequestMethod.GET)
	public String index(Model model, @ModelAttribute("user") TsUser user,
			Page<TsCityTopic> page,
			@RequestParam(defaultValue = "") String keyword,
			@RequestParam(defaultValue = "0") int cateId,
			@RequestParam(defaultValue = "0") int buid,
			@RequestParam(defaultValue = "") String act) {
		try {
			if (!"".equals(keyword)) {
				keyword = URLDecoder.decode(keyword, "UTF-8");
				model.addAttribute("keyword", keyword);
			}
			model.addAttribute("cateId", cateId);
			model.addAttribute("act", act);

			user = userService.find(user.getUid());
			model.addAttribute("user", user);

			// is biz
			model.addAttribute("isBiz",
					userGroupLinkService.userIsGroup(user.getUid(), 2));

			// citycategory 10
			model.addAttribute("cityCategories",
					cityCategoryService.find(0, 10));

			List<TsCityTopic> cityTopics = new ArrayList<TsCityTopic>(0);
			Set<Integer> uids = null; //
			Set<Integer> tids = null; //
			List<TsCityTopic> cityTopics_top = null;// 置顶
			if ("my".equals(act)) {// my topics
				buid = user.getUid();
			} else if ("replies".equals(act)) {// 被回应列表
				// 个人的所有帖子
				// Set<Integer> mytids =
				// cityTopicService.findTids(user.getUid());
				tids = cityTopicReplyService.findUnreadTids(user.getUid());
				if (tids == null) {
					tids = new HashSet<Integer>(1);
					tids.add(0);
				}
			} else if ("follow".equals(act)) {// my's follow
				uids = weiboFollowService.findFoolowUidsByUid(user.getUid());
				if (uids == null) {
					uids = new HashSet<Integer>(1);
					uids.add(0);
				}
			} else if ("favorite".equals(act)) {// 同城帖子-喜欢
				tids = cityTopicFavoriteService.findfavoriteTopicIdsByUid(user
						.getUid());
				if (tids == null) {
					tids = new HashSet<Integer>(1);
					tids.add(0);
				}
			} else {// 显示置顶的
				// 置顶
				cityTopics_top = cityTopicService.findByType(cateId == 0 ? 5
						: 3, cateId, 0, 1);
			}

			int total = cityTopicService.count(buid, tids, uids,
					user.getCity(), cateId, keyword);
			if (total > 0) {
				page.rebuild(total, "city.htm", 5);
				cityTopics = cityTopicService.find(buid, tids, uids,
						user.getCity(), cateId, keyword, page.getFirst(),
						page.getPageSize());
			}
			if (cityTopics_top != null && !cityTopics_top.isEmpty())
				cityTopics.addAll(0, cityTopics_top);
			if (cityTopics != null && !cityTopics.isEmpty())
				model.addAttribute("page", page.setElements(cityTopics));

			Set<Integer> favoriteTopicIds = cityTopicFavoriteService
					.findfavoriteTopicIdsByUid(user.getUid());
			if (favoriteTopicIds != null && !favoriteTopicIds.isEmpty()) {
				model.addAttribute("favoriteTopicIds", favoriteTopicIds);
			}
			Set<Integer> followUids = weiboFollowService
					.findFoolowUidsByUid(user.getUid());
			if (followUids != null && !followUids.isEmpty()) {
				model.addAttribute("followUids", followUids);
			}

			// recommend cityinfo 4
			List<TsCityTopic> cityTopics_4recommend = cityTopicService
					.findByType(1, 0, 0, 4);
			model.addAttribute("cityTopics_4recommend", cityTopics_4recommend);

			// hot citinfo 4
			List<TsCityTopic> cityTopics_4hot = cityTopicService.findByType(
					cateId == 0 ? 4 : 2, cateId, 0, 4);
			model.addAttribute("cityTopics_4hot", cityTopics_4hot);
		} catch (BizException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return "city/cityinfo";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String cityDelete(Model model,
			@RequestParam(defaultValue = "0") int id) {
		try {
			if (id != 0)
				cityTopicService.delete(id);
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "redirect:/city.htm";
	}

	// init 同城信息发布
	@RequestMapping(value = "/publish", method = RequestMethod.GET)
	public String cityPublish(Model model, @ModelAttribute("user") TsUser user,
			@RequestParam(defaultValue = "0") int id) {
		try {
			// All type
			List<TsCityCategory> cityCategories = cityCategoryService.find(0,
					cityCategoryService.count());
			model.addAttribute("cityCategories", cityCategories);

			// my publish 3
			model.addAttribute("myPublish", cityTopicService.find(
					user.getUid(), null, null, 0, 0, null, 0, 2));

			// init 编辑
			if (id != 0)
				model.addAttribute("cityTopic", cityTopicService.find(id));
		} catch (BizException e) {
			e.printStackTrace();
		}
		return "/city/city_publish";
	}

	// 同城信息发布
	@RequestMapping(value = "/publish", method = RequestMethod.POST)
	public String cityPublish(Model model, @ModelAttribute("user") TsUser user,
			TsCityTopic cityTopic) {
		try {
			if (cityTopic.getId() == 0) {// insert
				cityTopic.setUser(user);
				cityTopic.setCityId(user.getCity());
				cityTopic.setTime(new Date());
				cityTopicService.save(cityTopic);
			} else {// update
				TsCityTopic _cityTopic = cityTopicService.find(cityTopic
						.getId());
				_cityTopic.setTitle(cityTopic.getTitle());
				_cityTopic.setCityCategory(cityTopic.getCityCategory());
				_cityTopic.setContent(cityTopic.getContent());
				cityTopicService.save(_cityTopic);
			}

		} catch (BizException e) {
			e.printStackTrace();
		}
		return "redirect:/city.htm";
	}

	// 喜欢
	@RequestMapping(value = "/favorite", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> favorite(@ModelAttribute("user") TsUser user,
			TsCitytopicFavorite citytopicFavorite,
			@RequestParam(defaultValue = "0") int flag) {
		Map<String, Object> map = new HashMap<>();
		try {
			if (flag == 1) {// 喜欢
				if (user.getUid() == citytopicFavorite.getUid()) {
					map.put("result", 0);
					map.put("msg", "不能喜欢自己哦！");
					return map;
				}
				citytopicFavorite.setUid(user.getUid());
				cityTopicFavoriteService.save(citytopicFavorite);
				map.put("result", 1);
				map.put("msg", "喜欢成功！");
			} else {// 取消喜欢
				cityTopicFavoriteService.delete(user.getUid(),
						citytopicFavorite.getCitytopicid());
				map.put("result", 1);
				map.put("msg", "成功取消喜欢！");
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		return map;
	}

	// init 同城内容回帖 ajax
	@RequestMapping(value = "/replies", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> replies(int id) {
		Map<String, Object> map = new HashMap<>();
		try {
			Set<TsCitytopicReply> xqtopicReplies = cityTopicService.find(id)
					.getCitytopicReplies();
			List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
			for (TsCitytopicReply citytopicReply : xqtopicReplies) {
				Map<String, Object> a = new HashMap<>();
				a.put("uid", citytopicReply.getUser().getUid());
				a.put("uname", citytopicReply.getUser().getUname());
				a.put("content", citytopicReply.getContent());
				a.put("time", CommonHelper.DATE_FORMAT_CH.format(citytopicReply
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

	// init 同城内容回帖 ajax
	@RequestMapping(value = "/replies", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> replies(TsCitytopicReply citytopicReply,
			@ModelAttribute("user") TsUser user) {
		Map<String, Object> map = new HashMap<>();
		try {
			citytopicReply.setTime(new Date());
			citytopicReply.setUser(user);
			cityTopicReplyService.save(citytopicReply);
			map.put("result", "1");
			map.put("msg", "信息发送成功！");
		} catch (BizException e) {
			e.printStackTrace();
		}
		return map;
	}

	@RequestMapping(value = "/citytoppicNews", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> citytoppicNews(
			@ModelAttribute("user") TsUser user,
			@RequestParam(defaultValue = "0") int maxId) {
		Map<String, Object> map = new HashMap<>();
		try {
			if (maxId == 0) {
				map.put("maxId", cityTopicService.maxId());
			} else {
				map.put("count", cityTopicService.countNews(0, 0, maxId));
			}
			map.put("result", 1);
		} catch (BizException e) {
			e.printStackTrace();
		}
		return map;
	}
}