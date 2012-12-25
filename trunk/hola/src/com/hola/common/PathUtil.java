package com.hola.common;

/**
 * 
 * 
 * 
 * java类获取web应用的根目录
 * 
 */
public final class PathUtil {

	/**
	 * @param args
	 */
	public static void main(String[] args) throws Exception {
		System.out.println(PathUtil.getWebClassesPath());
		System.out.println(PathUtil.getWebInfPath());
		System.out.println(PathUtil.getWebRoot());
	}

	public static String getWebClassesPath() {
		// String path = getClass().getProtectionDomain().getCodeSource()
		// .getLocation().getPath();
		String path = Thread.currentThread().getContextClassLoader()
				.getResource("").getPath();// getClass().getClassLoader().getResource("").getPath();
		return path;
	}

	public static String getWebInfPath() throws IllegalAccessException {
		String path = getWebClassesPath();
		if (path.indexOf("WEB-INF") > 0) {
			path = path.substring(0, path.indexOf("WEB-INF") + 8);
		} else {
			throw new IllegalAccessException("路径获取错误");
		}
		return path;
	}

	public static String getWebRoot() throws IllegalAccessException {
		String path = getWebClassesPath();
		if (path.indexOf("WEB-INF") > 0) {
			path = path.substring(0, path.indexOf("WEB-INF/classes"));
		} else {
			throw new IllegalAccessException("路径获取错误");
		}
		return path;
	}
}
