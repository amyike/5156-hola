package com.kaliry.common;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

public class RedirectUtil {

	public static void msg(HttpServletResponse response, int time, String url,
			String msg) {
		try {
			response.setCharacterEncoding("UTF-8");// 设置当前码表
			response.setContentType("text/html;charset=UTF-8");
			response.setHeader("refresh", time + "; url='" + url + "'");
			response.getWriter().write(msg);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
