package com.hola.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;

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

	@ExceptionHandler(Exception.class)
	public String exception(Exception e, HttpServletRequest request) {
		// e.printStackTrace();
		request.setAttribute("message", e.getMessage());
		request.setAttribute("localMessage", e.getLocalizedMessage());
		e.printStackTrace();
		return "/common/exception";
	}

	public String message(HttpServletRequest request, int redirectTime,
			String redirectURL, String message) {
		request.setAttribute("redirectTime", redirectTime);
		request.setAttribute("redirectURL", redirectURL);
		request.setAttribute("message", message);
		return "/common/message";
	}
}
