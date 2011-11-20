package com.hola.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/user")
public class UserController {
	@RequestMapping("/list")
	public ModelAndView list(Model model) {
		// model.addAttribute("user", "kaliry");
		System.out.println("hello:" + model);
		// return "redirect:/success.jsp";
		return new ModelAndView("welcome");
	}
}
