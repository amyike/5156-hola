package com.nianmi.member.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.nianmi.member.pojo.TsUser;
import com.nianmi.member.pojo.TsWeiboFollow;
import com.nianmi.member.service.impl.WeiboFollowService;

/**
 * 回复
 * 
 * @author yike
 * 
 */
@Controller
@SessionAttributes("user")
@RequestMapping("/follow")
public class WeiboFollowController extends BaseController {

	@Autowired
	private WeiboFollowService weiboFollowService;

	// 关注
	@RequestMapping(method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> follow(@ModelAttribute("user") TsUser user,
			TsWeiboFollow weiboFollow,
			@RequestParam(defaultValue = "0") int flag) {
		Map<String, Object> map = new HashMap<>();
		try {
			if (flag == 1) {// 关注
				weiboFollow.setUid(user.getUid());//
				weiboFollowService.save(weiboFollow);
				map.put("result", 1);
				map.put("msg", "关注成功！");
			} else {// 取消关注
				weiboFollowService.delete(user.getUid(), weiboFollow.getFid());
				map.put("result", 1);
				map.put("msg", "成功取消关注！");
			}
		} catch (Exception e) {
			map.put("result", 0);
			map.put("msg", e.getMessage() + "！");
			e.printStackTrace();
		}
		return map;
	}
}