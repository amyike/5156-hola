package com.hola.common.ftl;

import java.io.OutputStreamWriter;
import java.util.HashMap;
import java.util.Map;

public class RepeatTest {
	public static void main(String[] args) {
		Map<String, Object> root = new HashMap<String, Object>();
		root.put("repeat", new RepeatDirective());
		FreeMarkertUtil.processTemplate("src/templates", "repeat.ftl", "UTF-8",
				root, new OutputStreamWriter(System.out));
	}
}
