package com.hola.controller;

import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

public abstract class BaseController implements IBaseController {

	public ModelAndView index(Model model, String name) {

		return new ModelAndView(name);
	}

	public ModelAndView delete(Model model, String name) {

		return new ModelAndView();
	}

	public ModelAndView create(Model model, String name) {
		model.addAttribute("action", "create");
		model.addAttribute("actionName", "添加");

		return new ModelAndView(name);
	}

	public ModelAndView update(Model model, String name) {
		model.addAttribute("action", "update");
		model.addAttribute("actionName", "修改");

		return new ModelAndView(name);
	}

}
