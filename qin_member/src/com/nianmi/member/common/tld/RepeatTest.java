package com.nianmi.member.common.tld;

import java.io.OutputStreamWriter;
import java.util.HashMap;
import java.util.Map;

public class RepeatTest {
	public static void main(String[] args) {
		Map<String, Object> root = new HashMap<>();
		root.put("repeat", new RepeatDirective());
		FreeMarkertUtil.processTemplate("src/templates", "repeat.ftl", "UTF-8",
				root, new OutputStreamWriter(System.out));
	}
}
