package com.nianmi.member.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.nianmi.member.common.CommonHelper;
import com.nianmi.member.exception.BizException;
import com.nianmi.member.pojo.TsUser;
import com.nianmi.member.pojo.TsWeiboComment;
import com.nianmi.member.service.impl.WeiboCommentService;

/**
 * 回复
 * 
 * @author yike
 * 
 */
@Controller
@SessionAttributes("user")
@RequestMapping("/replies")
public class WeiboCommentController extends BaseController {

	@Autowired
	private WeiboCommentService weiboCommentService;

	@RequestMapping(method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> replies(
			@RequestParam(defaultValue = "0") int weiboId,
			@RequestParam(defaultValue = "0") int type) {
		Map<String, Object> map = new HashMap<>();
		try {
			List<TsWeiboComment> weiboComments = weiboCommentService.find(
					weiboId, type, -1, -1);
			List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
			for (TsWeiboComment weiboComment : weiboComments) {
				Map<String, Object> a = new HashMap<>();
				a.put("uname", weiboComment.getUser().getUname());
				a.put("content", weiboComment.getContent());
				a.put("time", CommonHelper.DATE_FORMAT_CH.format(weiboComment
						.getCtime()));
				list.add(a);
			}
			map.put("result", 1);
			map.put("data", list);
		} catch (BizException e) {
			e.printStackTrace();
		}
		return map;
	}

	@RequestMapping(method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> replies(@ModelAttribute("user") TsUser user,
			TsWeiboComment weiboComment) {
		Map<String, Object> map = new HashMap<>();
		try {
			weiboComment.setUser(user);
			weiboComment.setCtime(new Date());
			weiboCommentService.save(weiboComment);
			map.put("result", "1");
			map.put("msg", "信息发送成功！");
		} catch (BizException e) {
			e.printStackTrace();
		}
		return map;
	}
}