package com.hola.common;

import javax.servlet.http.HttpServletRequest;

/**
 * <p>
 * 全局常量类
 * </p>
 * 
 * @author mydeng
 * @date 2011-1-8
 * 
 */
public abstract class Constants {

	public final static String BASE_ABSOLUTE_URL = "http://localhost:8080/";

	/**
	 * 前台数据库名称
	 */
	public final static String DB_NAME = "db_";

	/**
	 * <p>
	 * 后台数据库名称
	 * </p>
	 */
	public final static String DB_NZNMASTER = "db_master";

	/**
	 * <p>
	 * 执行成功(保存，或者其它逻辑),删除和更新逻辑不一定返回该值(它们可能返回处理的数量)
	 * </p>
	 */
	public final static int EXECUTE_SUCCESS = Integer.valueOf(1);

	/**
	 * <p>
	 * 执行失败(保存，删除，更新均可使用)
	 * </p>
	 */
	public static final int EXECUTE_FAIL = Integer.valueOf(-1);

	/**
	 * 返回水印图片绝对路径
	 * 
	 * @return
	 */
	public static String getWaterImgPath(HttpServletRequest req) {
		String path = req.getRealPath("/") + "images/logo1.png";
		return path;
	}

	public final static String DURL = "http://www.hola.cn/";

	// 发送邮件服务、用户名和密码
	public final static String MAILNAME = "info@hola.cn"; // 发送邮件的邮箱账号
	public final static String MAILPWD = "123456"; // 发送邮件的邮箱密码
	public final static String HOST = "mail.hola.cn"; // 邮箱服务器域名或地址
}
