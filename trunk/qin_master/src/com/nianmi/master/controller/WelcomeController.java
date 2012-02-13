package com.nianmi.master.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 小区
 * 
 * @author yike
 * 
 */
@Controller
@RequestMapping("/welcome")
public class WelcomeController extends BaseController {

	@RequestMapping(method = RequestMethod.GET)
	public String index(Model model) {

		return "/common/welcome";
	}
}