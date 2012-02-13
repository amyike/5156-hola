package com.nianmi.member.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.nianmi.member.exception.BizException;
import com.nianmi.member.pojo.TsMessage;
import com.nianmi.member.pojo.TsUser;
import com.nianmi.member.service.impl.MessageService;

/**
 * 站内信
 * 
 * @author yike
 * 
 */
@Controller
@SessionAttributes("user")
@RequestMapping("/msg")
public class MessageController extends BaseController {

	@Autowired
	private MessageService messageService;

	@RequestMapping(method = RequestMethod.GET)
	public String msg(Model model) {
		return "redirect:/";
	}

	@RequestMapping(method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> msg(@ModelAttribute("user") TsUser user,
			TsMessage tsMessage) {
		Map<String, Object> map = new HashMap<>();
		try {
			tsMessage.setFromUser(user);
			tsMessage.setCtime(new Date());
			tsMessage.setType(0);// 站内信-小区
			tsMessage.setIsLastest(1);
			messageService.save(tsMessage);
			map.put("result", "1");
			map.put("msg", "信息发送成功！");
		} catch (BizException e) {
			e.printStackTrace();
		}
		return map;
	}
}