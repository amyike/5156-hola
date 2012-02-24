package com.nianmi.member.common;

import java.util.Date;

import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.support.WebBindingInitializer;
import org.springframework.web.context.request.WebRequest;

/**
 * @author: yk
 * @createDate: 2011-09-20
 * @function: 数据绑定，注册自定义的属性编辑器
 */
public class WebBinder implements WebBindingInitializer {

	@Override
	public void initBinder(WebDataBinder binder, WebRequest request) {
		binder.registerCustomEditor(Date.class, new DateConverter());
	}
}
