package com.hola.common;

import java.net.MalformedURLException;

import org.apache.commons.lang.StringUtils;

public class Test4Hola {

	public static void main(String[] args) throws MalformedURLException {
		// BigDecimal bigDecimal = BigDecimal.valueOf(34.53);
		// System.out.println(bigDecimal);
		// Double d = Double.valueOf(34.53);
		// System.out.println(d);
		// Float f = Float.valueOf(34.53f);
		// System.out.println(f);

		// System.out.println(Long.valueOf("34.53"));
		// System.out.println(34.53f);

		// String _ = "s";
		// System.out.println(_);

		System.out.println(StringUtils.isNumeric("199o9"));
	}
}
