package com.kaliry.common;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

/**
 * @author: yk
 * @createDate:
 * @function:
 */
public final class CommonHelper {

	public final static SimpleDateFormat DATETIME_FORMAT = new SimpleDateFormat(
			"yyyy-MM-dd HH:mm:ss");

	public final static SimpleDateFormat DATE_FORMAT = new SimpleDateFormat(
			"yyyy-MM-dd");

	public final static SimpleDateFormat DATE_FORMAT_CH = new SimpleDateFormat(
			"MM月dd日 HH:mm");;

	/**
	 * 获取指定长度的随机数
	 * 
	 * @param len
	 *            长度
	 * @return
	 */
	public static int getRandNumber(int len) {
		if (len > 20 || len < 1) {
			len = 5;
		}
		int min = 10 ^ 5;
		Random rd = new Random();

		int number = rd.nextInt(min);
		if (number < min) {
			number += min;
		}

		return number;
	}

	/**
	 * 根据逗号分割的字符串得到相应的数组
	 * 
	 * @param text
	 *            : id1,id2,id3.form
	 * @return
	 */
	public static String[] getArrayFromString(String text) {
		if (text.length() > 0 && text.indexOf(".") > 0) {
			text = text.substring(0, text.indexOf("."));
		}
		String[] array = text.split(",");

		return array;
	}

	/**
	 * 获取当前时间
	 */
	public static String getCurrentTime() {
		return DATETIME_FORMAT.format(new Date());
	}

	public void getCookie() {

	}
}
