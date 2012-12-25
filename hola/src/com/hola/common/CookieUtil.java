package com.hola.common;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

/**
 * @author: yk
 * @createDate:
 * @function:
 */
public final class CookieUtil {
	private static int TIMEOUT = 5;

	public void setCookie(HttpServletRequest request) {

	}

	public void getCookie(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		for (Cookie cookie : cookies) {

		}
	}
}