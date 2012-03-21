package com.main;

import java.sql.Time;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.log4j.BasicConfigurator;

public class MainTest {

	public static void main(String[] args) {
		Timestamp timestamp = new Timestamp(1323757651000l);
		System.out.println(timestamp.toLocaleString());
		// Date date = new Date(1331695665);// 1324870703
		// System.out.println(date.toLocaleString());
		Time time = new Time(1331695665000l);
		System.out.println(time.toLocaleString());
	}

	private void regExp() {

		String regExp_img = "<img[\\s.+]+src>";
		String inputStr = "<img src=''>";

		Pattern pattern = Pattern.compile(regExp_img);
		System.out.println(pattern);
		System.out.println(pattern.matcher(inputStr).matches());

	}

	public void a() {
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
		// Scanner scanner = new Scanner(System.in);
		Map<String, String> map = System.getenv();
		Iterator<String> iterator = map.keySet().iterator();
		while (iterator.hasNext()) {
			String key = (String) iterator.next();
			System.out.println(key + " \t = \t " + map.get(key));
		}
		// System.out.println(System.getenv("appdata"));
		// System.out.println(System.getProperties());
		// System.out.println(scanner.hasNext());
		// System.out.println(UUID.randomUUID());
		for (int i = 0, j = 10; i < 30; i += 2, j -= 2) {
			System.out.println(i + " : " + (i + "").hashCode() + "  -  " + j
					+ " : " + (j + "").hashCode());
		}
	}

	public void b() {
		System.out.println(getClass().getClassLoader().getResource("")
				.getPath());
	}

	public void testLogger() {
		BasicConfigurator.configure();
		// logging的各种方法
		log.debug("Start of main()");
		log.info("Just testing a log message with priority set to INFO");
		log.warn("Just testing a log message with priority set to WARN");
		log.error("Just testing a log message with priority set to ERROR");
		log.fatal("Just testing a log message with priority set to FATAL");
		// 另一种不方便的格式
		// log.log(Priority.DEBUG,
		// "Testing a log message use a alternate form");
		log.debug("End of main().");
	}

	// private static Logger log = Logger.getLogger(MainTest.class);

	private static Log log = LogFactory.getLog(MainTest.class);

	public void tea(int[] x) {
		x = new int[] {};
	}

	public void teas(Map<String, String> map) {
		map = new HashMap<String, String>();
		map.put("a", "a");
		map.put("b", "b");
		map.put("c", "c");
	}

	public void as() {
		// new MainTest().b();
		int[] a = { 1, 2, 3 };
		new MainTest().tea(a);
		for (int i = 0; i < a.length; i++) {
			System.out.println(a[i]);
		}
		Map<String, String> map = new HashMap<String, String>();
		new MainTest().teas(map);
		Set<String> keys = map.keySet();
		for (String key : keys) {
			System.out.println(map.get(key));
		}
	}

	String str = "";
	A a = new A() {

	};

	abstract class A {
	}
}