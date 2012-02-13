package com.nianmi.member.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.WebUtils;

import com.nianmi.member.common.MD5;
import com.nianmi.member.pojo.TsUser;
import com.nianmi.member.service.impl.UserService;

/**
 * 登录
 * 
 * @author yike
 * 
 */
@Controller
public class LoginController extends BaseController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		System.out.println("Login GET");
		return "redirect:/";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> login(HttpServletRequest request,
			HttpServletResponse response, String email, String password) {
		Map<String, Object> map = new HashMap<>();
		map.put("result", 0);
		try {
			if (email == null || "".equals(email.trim())) {
				System.out.println("Email Empty !");
				map.put("result", 0);
				map.put("msg", "Email Empty !");
				return map;
			}
			if (password == null || "".equals(password.trim())) {
				System.out.println("Password Empty !");
				map.put("result", 0);
				map.put("msg", "Password Empty !");
				return map;
			}

			TsUser user = userService.login(email, MD5.md5(password));
			if (user != null) {
				System.out.println(user.getUid() + "\t" + user.getEmail()
						+ "\t" + user.getUname() + "\tlogin success !!!");
				WebUtils.setSessionAttribute(request, "user", user);
				Cookie cookie = new Cookie("TS_LOGGED_USER_UID", user.getUid()
						+ "");
				response.addCookie(cookie);
				map.put("result", 1);
			} else {
				System.out.println(email + "\tlogin failure !!!");
			}
			response.sendRedirect("/city.htm");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	@ResponseBody
	public void logout(HttpServletRequest request, HttpServletResponse response) {
		try {
			System.out.println("logout exec ...");
			TsUser user = (TsUser) WebUtils
					.getSessionAttribute(request, "user");
			if (user != null) {
				System.out.println(user.getUid() + "\t" + user.getEmail()
						+ "\t" + user.getUname() + "\tloginout !!!");
				WebUtils.setSessionAttribute(request, "user", null);
			}
			response.sendRedirect("/index.php?app=home&mod=Public&act=logout");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}