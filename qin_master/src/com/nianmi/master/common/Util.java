package com.nianmi.master.common;

import java.io.UnsupportedEncodingException;
import java.util.StringTokenizer;

public class Util {
	private static StringBuilder sb = new StringBuilder();

	/**  
	 * 从ip的字符串形式得到字节数组形式
	21.     * @param ip 字符串形式的ip  
	22.     * @return 字节数组形式的ip  
	23.     */
	public static byte[] getIpByteArrayFromString(String ip) {
		byte[] ret = new byte[4];
		StringTokenizer st = new StringTokenizer(ip, ".");
		try {
			ret[0] = (byte) (Integer.parseInt(st.nextToken()) & 0xFF);
			ret[1] = (byte) (Integer.parseInt(st.nextToken()) & 0xFF);
			ret[2] = (byte) (Integer.parseInt(st.nextToken()) & 0xFF);
			ret[3] = (byte) (Integer.parseInt(st.nextToken()) & 0xFF);
		} catch (Exception e) {
			//LogFactory.log("从ip的字符串形式得到字节数组形式报错", Level.ERROR, e);   
		}
		return ret;
	}

	/**  
	38.     * @param ip ip的字节数组形式  
	39.     * @return 字符串形式的ip  
	40.     */
	public static String getIpStringFromBytes(byte[] ip) {
		sb.delete(0, sb.length());
		sb.append(ip[0] & 0xFF);
		sb.append('.');
		sb.append(ip[1] & 0xFF);
		sb.append('.');
		sb.append(ip[2] & 0xFF);
		sb.append('.');
		sb.append(ip[3] & 0xFF);
		return sb.toString();
	}

	/**  
	54.     * 根据某种编码方式将字节数组转换成字符串  
	55.     * @param b 字节数组  
	56.     * @param offset 要转换的起始位置  
	57.     * @param len 要转换的长度  
	58.     * @param encoding 编码方式  
	59.     * @return 如果encoding不支持，返回一个缺省编码的字符串  
	 */
	public static String getString(byte[] b, int offset, int len,
			String encoding) {
		try {
			return new String(b, offset, len, encoding);
		} catch (UnsupportedEncodingException e) {
			return new String(b, offset, len);
		}
	}
}
