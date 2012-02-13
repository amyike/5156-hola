package com.nianmi.member.common;

public class MD5 {
	public static String md5(String strMd5) {
		String sRet = null;
		try {
			java.security.MessageDigest alga = java.security.MessageDigest
					.getInstance("MD5");
			alga.update(strMd5.getBytes());
			byte[] digesta = alga.digest();
			sRet = byte2hex(digesta);
		} catch (java.security.NoSuchAlgorithmException ex) {
			System.out.println("非法摘要算法");
		}
		return sRet;
	}

	private static String byte2hex(byte[] b) // 二行制转字符串
	{
		String hs = "";
		String stmp = "";
		for (int n = 0; n < b.length; n++) {
			stmp = (java.lang.Integer.toHexString(b[n] & 0XFF));
			if (stmp.length() == 1)
				hs = hs + "0" + stmp;
			else
				hs = hs + stmp;
			if (n < b.length - 1)
				hs = hs + "";
		}
		return hs;
	}

	public static void main(String[] argv) {
		// System.out.println("6226f7cbe59e99a90b5cef6f94f966fd".equals(MD5
		// .md5("sd")));
		System.out.println(md5("postfixadmin"));
	}
}
