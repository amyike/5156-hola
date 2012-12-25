package com.hola.common;

import java.beans.PropertyEditorSupport;
import java.text.ParseException;

import org.springframework.util.StringUtils;

/**
 * @author: yk
 * @createDate: 2011-09-12
 * @function: 日期格式化工具
 */
public class DateConverter extends PropertyEditorSupport {

	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		if (!StringUtils.hasText(text)) {
			setValue(null);
			return;
		}

		try {
			if (text.indexOf(":") == -1 && text.length() == 10) {
				setValue(CommonHelper.DATE_FORMAT.parse(text));
			} else if (text.indexOf(":") > 0 && text.length() == 19) {
				setValue(CommonHelper.DATETIME_FORMAT.parse(text));
			} else {
				throw new IllegalArgumentException(
						"Could not parse date, date format is error ");
			}
		} catch (ParseException ex) {
			throw new IllegalArgumentException("Could not parse date: "
					+ ex.getMessage(), ex);
		}
	}
}
