package com.hola.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hola.service.CommunityService;

@Controller
@RequestMapping("/community")
public class CommunityController extends BaseController {

	@Autowired
	private CommunityService communityService;

	@RequestMapping("/")
	public ModelAndView index(Model model) {
		System.out.println(communityService);
		return new ModelAndView("community");
	}
}
