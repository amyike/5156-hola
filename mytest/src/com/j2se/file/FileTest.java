package com.j2se.file;

public class FileTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		try {
			// FileUtils.copyFile(new File("F:/1.txt"), new File(
			// "F:/1asdfasfd/a/2.txt"));
			// Set<Object> set = System.getProperties().keySet();
			// Set<Entry<Object, Object>> set2 =
			// System.getProperties().entrySet();
			// for (Entry<Object, Object> entry : set2) {
			// System.out.println(entry);
			// }
			// System.out.println(System.getenv());
			int a = 2;
			float b = 5.6f;
			a = (int) (a * b);
			System.out.println(a);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
