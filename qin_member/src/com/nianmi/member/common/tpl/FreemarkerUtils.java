package com.nianmi.member.common.tpl;

import java.io.File;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import com.nianmi.member.common.tld.RepeatDirective;

import freemarker.template.Configuration;
import freemarker.template.DefaultObjectWrapper;
import freemarker.template.Template;

public class FreemarkerUtils {
	public static void main(String[] args) throws Exception {
		/* 在整个应用的生命周期中，这个工作你应该只做一次。 */
		/* 创建和调整配置。 */
		Configuration cfg = new Configuration();
		cfg.setDirectoryForTemplateLoading(new File("src/templates"));
		cfg.setObjectWrapper(new DefaultObjectWrapper());
		/* 在整个应用的生命周期中，这个工作你可以执行多次 */
		/* 获取或创建模板 */
		Template temp = cfg.getTemplate("test.ftl", Locale.getDefault());
		/* 创建数据模型 */
		Map<String, Object> root = new HashMap<>();
		root.put("repeat", new RepeatDirective());
		root.put("user", "Big Joe");
		Map<String, String> latest = new HashMap<>();
		root.put("latestProduct", latest);
		latest.put("url", "products/greenmouse.html");
		latest.put("name", "green mouse");
		/* 将模板和数据模型合并 */
		Writer out = new OutputStreamWriter(System.out);
		temp.process(root, out);
		out.flush();
		out.close();
	}
}