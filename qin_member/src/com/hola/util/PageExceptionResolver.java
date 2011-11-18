package com.hola.util;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author: dxl
 * @createDate: 2011-09-20
 * @function: 自定义异常处理，集中处理未捕获的异常
 */
public class PageExceptionResolver implements HandlerExceptionResolver {

	private static Logger logger = Logger
			.getLogger(PageExceptionResolver.class);

	@Override
	public ModelAndView resolveException(HttpServletRequest request,
			HttpServletResponse response, Object obj, Exception ex) {
		logger.error("Catch Exception: ", ex);

		// 可将异常写入数据库，以备系统管理员维护

		Map<String, Object> map = new HashMap<>();
		map.put("message", ex.getMessage());

		return new ModelAndView("redirect:error", map);
	}
}
