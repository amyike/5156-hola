package com.nianmi.member.common.inc;

import java.util.List;
import java.util.Map;


public class BusinessInclude extends AbstractInclude {

	public BusinessInclude(Map map) {
		super(map);
	}

	@Override
	protected String getPath() {
		return "/inc/business.inc";
	}

	@Override
	protected String resolve() {
		StringBuffer sb = new StringBuffer();
		Map map = super.getMap();
		/*
		 * 1品牌商机; 2供应信息 ;3代理加盟 ; 4求购信息 ; 5加工信息 ; 6库存信息 ; 7外贸信息 ; 8合作信息;9其他信息
		 */
		// 头部
		sb.append("<div class='newspinpaileftl' style='margin-bottom:10px;'>");
		sb.append("<div class='newspinpaitopp'>");
		sb.append("<span style='background:#f45a77;'></span>");
		sb.append("<span>商机</span>");
		sb.append("<span id='news1' class='newshangjis'><a href='javascript:seleBusiIndex(1);'>品牌</a></span>");
		sb.append("<span id='news2' class='newshangjis1'><a href='javascript:seleBusiIndex(2);'>供应</a></span>");
		sb.append("<span id='news3' class='newshangjis1'><a href='javascript:seleBusiIndex(3);'>代理</a></span>");
		sb.append("<span id='news4' class='newshangjis1'><a href='javascript:seleBusiIndex(4);'>求购</a></span>");
		sb.append("<span id='news5' class='newshangjis1'><a href='javascript:seleBusiIndex(5);'>加工</a></span>");
		sb.append("<span id='news6' class='newshangjis1'><a href='javascript:seleBusiIndex(6);'>库存</a></span>");
		sb.append("<span id='news7' class='newshangjis1'><a href='javascript:seleBusiIndex(7);'>外贸</a></span>");
		sb.append("<span id='news8' class='newshangjis1'><a href='javascript:seleBusiIndex(8);'>合作</a></span>");
		sb.append("<span id='news9' class='newshangjis1'><a href='javascript:seleBusiIndex(9);'>其他</a></span>");
		sb.append("</div>");

		// sb.append("<script>seleBusi(1)</script>");
		// 数据部分
		for (int i = 1; i <= 9; i++) {
			List list = (List) map.get(i);

			sb.append("<div id='busi_" + i + "' style=display:"
					+ (i == 1 ? "block" : "none") + ">");

			sb.append("<ul>");

			for (int j = 0; list != null && j < list.size(); j++) {
				Map busi = (Map) list.get(j);
				String title = busi.get("c_title").toString();
				String type = busi.get("c_type").toString();
				if (title.length() > 18) {
					title = title.substring(0, 18);
				}
				String busiUrl = "";// 链接地址
				String wurl = busi.get("c_wurl") + "";
				if (!"".equals(wurl.trim())) {
					busiUrl = wurl;
				} else {
					busiUrl = "decollete!opportunityDetails.do?id="
							+ busi.get("c_id");
				}

				sb.append("<li class='newspinpai3li'>");

				sb.append("<span class='newspin3lic'>[" + type + "]</span>");

				sb.append("<span>");
				sb.append("<a href='" + busiUrl + "'>" + title + "</a>");
				sb.append("</span>");

				sb.append("</li>");
			}
			sb.append("</ul>");

			sb.append("</div>");
		}

		sb.append("</div>");
		return sb.toString();
	}
}
