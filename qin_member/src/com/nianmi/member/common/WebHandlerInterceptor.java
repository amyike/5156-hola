package com.nianmi.member.common;

import java.io.IOException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import com.nianmi.member.exception.BizException;
import com.nianmi.member.pojo.TsUser;
import com.nianmi.member.service.impl.UserService;

/**
 * @author: yk
 * @createDate: 2011-08-02
 * @function: 自定义拦截器，可实现权限判断、数据验证等功能
 */
public class WebHandlerInterceptor implements HandlerInterceptor {
	@Autowired
	private UserService userService;

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) {

		String uri = request.getRequestURI();
		System.out.println("Member(" + request.getRemoteAddr() + "):"
				+ request.getRequestURL().toString() + "  \t——\t  "
				+ request.getQueryString());

		String moduleName = uri.substring(0, uri.indexOf(".htm")).split("/")[1];
		WebUtils.setSessionAttribute(request, "currentModule", moduleName);

		String filterPattern = "test,login,logout,invite,feedback";
		if (filterPattern.contains(moduleName)) {
			// Session does not detect
			return true;
		}

		TsUser user = (TsUser) WebUtils.getSessionAttribute(request, "user");
		if (user == null) {// Not logged in
			// Check Cookie exists
			Cookie[] cookies = request.getCookies();
			System.out.println("CookieSum:  "
					+ (cookies == null ? 0 : cookies.length));
			if (cookies != null)
				for (Cookie cookie : cookies) {
					if ("TS_LOGGED_USER_UID".equals(cookie.getName())) {
						System.out.println("Cookie Name:  " + cookie.getName()
								+ "\tValue:  " + cookie.getValue());
						String _uid = cookie.getValue();
						if (_uid != null && !"".equals(_uid.trim())) {
							try {
								user = userService.find(new Integer(_uid));
								WebUtils.setSessionAttribute(request, "user",
										user);
							} catch (BizException e) {
								e.printStackTrace();
							}
						}
					}
				}
		}
		if (user == null) {// Still Null
			System.out.println("Interceptor User:" + user
					+ "\tInterceptorModule:  " + moduleName);
			// RedirectUtil.msg(response, 0, "/", "请登录！3 秒后自动跳转到登录页面！");
			try {
				response.sendRedirect("/");
			} catch (IOException e) {
				e.printStackTrace();
			}
			return false;
		}

		// System.out.println("ISID:" + request.getSession().getId());
		System.out.println("Interceptor User:" + user.getEmail());
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
