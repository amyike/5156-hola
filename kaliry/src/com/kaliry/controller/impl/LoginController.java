package com.kaliry.controller.impl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.WebUtils;

import com.kaliry.common.MD5;
import com.kaliry.controller.BaseController;
import com.kaliry.pojo.impl.Master;
import com.kaliry.service.impl.MasterService;

/**
 * 登录
 * 
 * @author yike
 * 
 */
@Controller
public class LoginController extends BaseController {

	@Autowired
	private MasterService masterService;

	/*
	 * 登录界面
	 */
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login() {
		return "login/login_index";
	}

	/*
	 * 登录
	 */
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(HttpServletRequest request,
			HttpServletResponse response, String account, String password) {
		final DetachedCriteria criteria = DetachedCriteria
				.forClass(Master.class)
				.add(Restrictions.eq("account", account))
				.add(Restrictions.eq("password", MD5.md5(password)));
		try {
			Master user = masterService.findByCriteria(criteria);
			if (user != null) {
				WebUtils.setSessionAttribute(request, "LOGIN_USER", user);
				return "redirect:/admin";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/login";
	}

	/*
	 * 退出登录
	 */
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		WebUtils.setSessionAttribute(request, "LOGIN_USER", null);
		return "redirect:/";
	}
}