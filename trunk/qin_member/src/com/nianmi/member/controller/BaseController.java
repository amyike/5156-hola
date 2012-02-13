package com.nianmi.member.controller;

import org.springframework.ui.Model;

abstract class BaseController implements IBaseController {

	@Override
	public String index(Model model, String name) {
		model.addAttribute("module", "community");
		model.addAttribute("moduleName", "小区");
		return name;
	}

	@Override
	public String list(Model model, String name) {
		model.addAttribute("module", "community");
		model.addAttribute("moduleName", "小区");
		return name;
	}

	@Override
	public String insert(Model model, String name) {
		model.addAttribute("action", "create");
		model.addAttribute("actionName", "添加");
		return name;
	}

	@Override
	public String delete(Model model, String name) {
		model.addAttribute("action", "delete");
		model.addAttribute("actionName", "删除");
		return name;
	}

	@Override
	public String update(Model model, String name) {
		model.addAttribute("action", "update");
		model.addAttribute("actionName", "修改");
		return name;
	}

}
