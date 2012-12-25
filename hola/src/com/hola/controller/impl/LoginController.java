package com.hola.controller.impl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.WebUtils;

import com.hola.common.MD5;
import com.hola.controller.BaseController;
import com.hola.pojo.impl.Master;
import com.hola.service.impl.MasterService;

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
	public void login(HttpServletRequest request, HttpServletResponse response,
			String account, String password) {
		JSONObject json = new JSONObject();
		json.put("status", 0);
		if (StringUtils.isBlank(account)) {
			json.put("msg", "帐号不能为空");
		}
		if (StringUtils.isBlank(password)) {
			json.put("msg", "密码不能为空");
		}
		final DetachedCriteria criteria = DetachedCriteria.forClass(
				Master.class).add(Restrictions.eq("account", account));
		try {
			Master master = masterService.findByCriteria(criteria);

			if (master == null) {
				json.put("msg", "帐号不存在");
				json.write(response.getWriter());
			} else if (!MD5.md5(password).equals(master.getPassword())) {
				json.put("msg", "帐号密码不匹配");
				json.write(response.getWriter());
			} else {
				WebUtils.setSessionAttribute(request, "LOGIN_USER", master);
				// response.sendRedirect("/admin");
				json.put("status", "1");
				json.put("msg", "登录成功");
				json.write(response.getWriter());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
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