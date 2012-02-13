package com.nianmi.member.common.inc;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;


public class SearchInclude extends AbstractInclude {

	public SearchInclude(List list) {
		super(list);
	}

	@Override
	protected String getPath() {
		return "/inc/hotKeywords.inc";
	}

	@Override
	protected String resolve() {
		StringBuffer sb = new StringBuffer();
		List list = super.getList();
		for (int i = 0; list != null && i < list.size(); i++) {
			Map map = (Map) list.get(i);

			String keyword = map.get("c_keyword").toString();

			String href = map.get("c_wurl") + "";
			if ("".equals(href) || "null".equals(href)) {
				try {
					String _keyword = URLEncoder.encode(keyword, "UTF-8");
					_keyword = URLEncoder.encode(_keyword, "UTF-8");
					href = "http://www.nzn.cn/search.do?word=" + _keyword;
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
				}
			}

			sb.append("<a href='" + href + "' id='keyword_" + i
					+ "' name='keyword_" + i + "'>" + keyword + "</a>&nbsp;");
		}
		return sb.toString();
	}
}
