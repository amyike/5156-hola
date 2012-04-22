package com.main;

import java.util.concurrent.ThreadLocalRandom;
import java.util.regex.Pattern;

public class MainTest {

	private void regExp() {

		String regExp_img = "<img[\\s.+]+src>";
		String inputStr = "<img src=''>";

		Pattern pattern = Pattern.compile(regExp_img);
		System.out.println(pattern);
		System.out.println(pattern.matcher(inputStr).matches());

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
		// System.out.println(System.getProperty("user.home"));

		// URL url = ClassLoader.getSystemResource("log4j.properties");//
		// System.out.println(url.getPath());
		// System.out.println(Test.class.getProtectionDomain().getCodeSource()
		// .getLocation());

		// int[] a1 = new int[3];
		// int[] a2 = new int[4];
		// int[][] a3 = new int[2][3];
		// String[] a4 = new String[3];
		// System.out.println(a1.getClass() == a2.getClass());
		// System.out.println(a1.getClass() == a4.getClass());
		// System.out.println(a1.getClass() == a3.getClass());
		// System.out.println(a1.getClass().getName());

		// switch ("a") {
		// case "a":
		// break;
		// case "b":
		// break;
		// default:
		// break;
		// }

		// System.out.println(("" + Integer.MAX_VALUE).length());
		// System.out.println((Long.MAX_VALUE + "").length());

		// System.out.println(UUID.randomUUID());
		// for (int i = 0, j = 10; i < 30; i += 2, j -= 2) {
		// System.out.println(i + " : " + (i + "").hashCode() + "  -  " + j
		// + " : " + (j + "").hashCode());
		// }
		// Math.random();
		ThreadLocalRandom.current();
	}
}
