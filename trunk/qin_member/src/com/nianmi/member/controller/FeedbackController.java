package com.nianmi.member.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nianmi.member.exception.BizException;
import com.nianmi.member.pojo.TsFeedback;
import com.nianmi.member.service.impl.FeedbackService;

/**
 * 反馈
 * 
 * @author yike
 * 
 */
@Controller
@RequestMapping("/feedback")
public class FeedbackController extends BaseController {

	@Autowired
	private FeedbackService feedbackService;

	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "public/feedback";
	}

	// 提交反馈
	@RequestMapping(value = "commit", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> commit(TsFeedback feedback) {
		Map<String, Object> map = new HashMap<>();
		try {
			feedback.setTime(new Date());
			feedback.setState(0);
			feedbackService.save(feedback);
			map.put("result", 1);
		} catch (BizException e) {
			map.put("result", 0);
			e.printStackTrace();
		}
		return map;
	}
}