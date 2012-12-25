package com.hola.common;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

/**
 * @author: yk
 * @createDate: 2011-08-02
 * @function: 自定义拦截器，可实现权限判断、数据验证等功能
 */
public class WebHandlerInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) {

		String uri = request.getRequestURI();
		// 拦截后台页面
		if (uri.contains("admin") || uri.contains("list")
				|| uri.contains("add") || uri.contains("del")
				|| uri.contains("upd")) {
			if (WebUtils.getSessionAttribute(request, "LOGIN_USER") == null) {
				try {
					response.sendRedirect("/login");
					return false;
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
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
