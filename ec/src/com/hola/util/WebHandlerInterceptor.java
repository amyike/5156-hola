package com.hola.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.hola.pojo.User;

/**
 * @author: dxl
 * @createDate: 2011-08-02
 * @function: 自定义拦截器，可实现权限判断、数据验证等功能
 */
public class WebHandlerInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		// 获取当前请求地址，若为登录地址则认为是合法请求
		String url = request.getRequestURI();
		if (url.endsWith("login.form") || url.indexOf("loginCheck.form") > -1) {
			return true;
		}
		// 验证是否存在有效会话。若不存在则视为非法请求，重定向到登录页面
		User user = (User) request.getSession().getAttribute("user");
		if (user == null) {
			// response.sendRedirect("/");
			return false;
		}

		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) {
	}

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex) {
	}
}
