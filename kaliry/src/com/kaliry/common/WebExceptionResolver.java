package com.kaliry.common;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author: yk
 * @createDate: 2011-09-20
 * @function: 自定义异常处理，集中处理未捕获的异常
 */
public class WebExceptionResolver implements HandlerExceptionResolver {

	private static Logger logger = Logger.getLogger(WebExceptionResolver.class);

	@Override
	public ModelAndView resolveException(HttpServletRequest request,
			HttpServletResponse response, Object obj, Exception ex) {
		logger.error("Catch Exception: ", ex);

		// 可将异常写入数据库，以备系统管理员维护
		Map<String, String> map = new HashMap<String, String>();
		map.put("message", ex.getMessage());
		map.put("localMessage", ex.getLocalizedMessage());
		ex.printStackTrace();

		return new ModelAndView("common/error", map);
	}

}
