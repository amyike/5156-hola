package com.nianmi.master.controller;

import org.springframework.ui.Model;

public abstract class BaseController implements IBaseController {

	public String index(Model model, String name) {
		return name;
	}

	public String create(Model model, String name) {
		model.addAttribute("action", "create");
		model.addAttribute("actionName", "添加");
		return name;
	}

	public String update(Model model, String name) {
		model.addAttribute("action", "update");
		model.addAttribute("actionName", "修改");
		return name;
	}

	public String delete(Model model, String name) {

		return name;
	}
}
