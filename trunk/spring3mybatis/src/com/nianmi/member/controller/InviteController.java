package com.nianmi.member.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nianmi.member.pojo.TsInviteCause;
import com.nianmi.member.service.impl.InviteCauseService;

/**
 * 邀请
 * 
 * @author yike
 * 
 */
@Controller
@RequestMapping("/invite")
public class InviteController extends BaseController {

	@Autowired
	private InviteCauseService inviteCauseService;

	// @Autowired
	// private InviteCauseMapper<TsInviteCause> inviteCauseMapper;

	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		try {
			System.out.println(inviteCauseService.count());
			System.out.println(inviteCauseService.findById(111));

			TsInviteCause tsInviteCause = new TsInviteCause(1, "a", "b", "c",
					"d", 1);
			inviteCauseService.save(tsInviteCause);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "public/invite";
	}

	// 获取邀请码
	@RequestMapping(value = "get", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> get(TsInviteCause inviteCause) {
		Map<String, Object> map = new HashMap<>();
		try {
			// inviteCauseService.save(inviteCause);
			map.put("result", 1);
		} catch (Exception e) {
			map.put("result", 0);
			e.printStackTrace();
		}
		return map;
	}
}