package com.nianmi.member.common;

import java.util.regex.Pattern;

public class Test {

	private void regExp() {

		String regExp_img = "<img[\\s.+]+src>";
		String inputStr = "<img src=''>";

		Pattern pattern = Pattern.compile(regExp_img);
		System.out.println(pattern);
		System.out.println(pattern.matcher(inputStr).matches());

	}

	public void a() {
		System.out.println(Test.class.getSimpleName());
	}

	private void fileIO() throws Exception {

	}

	public static void main(String[] args) {
		// System.out.println(new Date(1321872049));
		// System.out.println(MD5.md5("123123"));
		// System.out.println(Locale.getDefault());
		// new Test().a();

		// Set<String> set = new HashSet<String>();
		// set.add("a");
		// set.add("b");
		// set.add("c");
		// set.add("d");
		// set.add("e");
		// System.out.println(set.toString().replaceAll("\\[|\\]", ""));
		// System.out.println(System.getProperty("JAVA_HOME"));
		System.out.println(System.getProperty("user.home"));
	}
}
