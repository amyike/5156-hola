package com.hola.common.inc;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

public class SearchKeywordsInclude extends AbstractInclude {

	public SearchKeywordsInclude(List list) {
		super(list);
	}

	@Override
	protected String getPath() {
		return "/inc/searchKeywords.inc";
	}

	@Override
	protected String resolve() {
		StringBuffer sb = new StringBuffer();
		List list = super.getList();
		sb.append("<div>");
		sb.append("<ul>");
		for (int i = 0; list != null && i < list.size(); i++) {
			Map map = (Map) list.get(i);

			String keyword = map.get("c_keyword").toString();
			String count = map.get("c_count").toString();
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

			sb.append("	<li class='ylunnesCL'>");
			sb.append("<a href=" + href + ">" + keyword + "(" + count + ")</a>");
			sb.append("&nbsp;&nbsp;&nbsp;");
			sb.append("</li>");

			if (i % 4 == 0)
				sb.append("</tr><tr>");
		}
		sb.append("</ul>");
		sb.append("</div>");
		return sb.toString();
	}
}
