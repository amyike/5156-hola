package com.kaliry.common;

import java.util.List;
import java.util.Map;

/**
 * 
 * @author 分页
 * 
 */
public class Page<T> {

	private static final int PAGE_SIZE = 50;// 默认页面大小

	private int total;//
	private int pageNumber;//
	private int pageIndex;//
	private List<T> elements;//
	private int first;//
	private int pageSize;//
	private String sysTime;//
	private String pageString;
	private Map<String, Object> params;
	private String paramsString;
	private String url;
	private int viewedNum;

	/**
	 * <p>
	 * The default constrctor ,after new Page() You should use 'setXXX()'methods
	 * to give the value of this object
	 * </p>
	 */
	public Page() {
	}

	/**
	 * 
	 * @param pageIndex
	 * @param total
	 * @param pageSize
	 */
	public Page(int pageIndex, int pageSize, int total, String url,
			int viewedNum, Map<String, Object> params) {
		init(pageIndex, pageSize, total, url, viewedNum, params);
	}

	public void rebuild(int total, String url, int viewedNum,
			Map<String, Object> params) {
		init(pageIndex, pageSize, total, url, viewedNum, params);
	}

	private void init(int pageIndex, int pageSize, int total, String url,
			int viewedNum, Map<String, Object> params) {
		if (total == 0)
			return;
		this.total = total;
		this.pageSize = pageSize == 0 ? PAGE_SIZE : pageSize;
		pageNumber = total / this.pageSize;
		if (total % this.pageSize > 0)
			pageNumber++;
		if (pageIndex < 1)
			pageIndex = 1;
		if (pageIndex > pageNumber) {
			pageIndex = pageNumber;
		}
		this.pageIndex = pageIndex;
		this.first = (pageIndex - 1) * this.pageSize;
		if (this.first > 0)
			this.first--;

		pageString = params == null ? createPageBar(url, viewedNum,
				paramsString) : createPageBar(url, viewedNum, params);
	}

	private String createPageBar(String url, int viewedNum,
			Map<String, Object> params) {
		StringBuffer sb = new StringBuffer();
		for (String paramKey : params.keySet()) {
			sb.append("&").append(paramKey).append("=")
					.append(params.get(paramKey));
		}
		return createPageBar(url, viewedNum, sb.toString());
	}

	private String createPageBar(String url, int viewedNum, String params) {
		if (pageNumber <= 1)
			return "";
		if (params == null)
			params = "";
		if (viewedNum == 0)
			viewedNum = 5;
		int firstNumber = pageIndex
				- Double.valueOf(Math.floor(viewedNum / 2)).intValue();

		if (firstNumber < 1)
			firstNumber = 1;
		int lastNumber = firstNumber + viewedNum - 1;
		if (lastNumber > pageNumber)
			lastNumber = pageNumber;
		if ((lastNumber - firstNumber + 1 < viewedNum)
				&& pageNumber > viewedNum) {
			firstNumber = lastNumber - viewedNum + 1;
		}
		int num = lastNumber - firstNumber + 1;
		if (num < viewedNum) {
			firstNumber = lastNumber - viewedNum - 1;
			if (firstNumber < 0) {
				firstNumber = 1;
			}
		}
		StringBuffer sb = new StringBuffer();
		String curl = "";
		sb.append("<ul>");
		// pageSize = pageSize + "&_isRFPB=true";
		params += "&_isRFPB=true";

		String joinChar = "&";
		if (url.indexOf("?") < 0)
			joinChar = "?";
		if (pageIndex > 1 && pageIndex <= pageNumber) {
			curl = url + joinChar + "pageIndex=" + (1) + "&pageSize="
					+ pageSize + params;
			sb.append("<li><a href='" + curl + "'>首页</a></li>");
			curl = url + joinChar + "pageIndex=" + (pageIndex - 1)
					+ "&pageSize=" + pageSize + params;
			sb.append("<li><a href='" + curl + "'>上一页</a></li>");
		}
		for (int i = firstNumber; i <= lastNumber; i++) {
			if (i == pageIndex) {
				curl = url + joinChar + "pageIndex=" + i + "&pageSize="
						+ pageSize + params;
				sb.append("<li class='page_current'> <a href='" + curl + "'>"
						+ i + "</a></li>");
			} else {
				curl = url + joinChar + "pageIndex=" + i + "&pageSize="
						+ pageSize + params;
				sb.append("<li> <a href='" + curl + "'>" + i + "</a></li>");
			}
		}
		if (pageIndex < pageNumber) {
			curl = url + joinChar + "pageIndex=" + (pageIndex + 1)
					+ "&pageSize=" + pageSize + params;
			sb.append("<li><a href='" + curl + "'>下一页</a></li>");
			curl = url + joinChar + "pageIndex=" + (pageNumber) + "&pageSize="
					+ pageSize + params;
			sb.append("<li><a href='" + curl + "'>末页</a></li>");
		}
		sb.append("<li>共" + pageNumber + "页，跳转至</li>");
		sb.append("<li><select id='pid' onchange='location.href=this.value'>");
		for (int i = 1; i <= pageNumber; i++) {
			if (i == pageIndex) {
				curl = url + joinChar + "pageIndex=" + i + "&pageSize="
						+ pageSize + params;
				sb.append("<li> <option value='" + curl
						+ "'  selected='selected'>" + i + "</option></li>");
			} else {
				curl = url + joinChar + "pageIndex=" + i + "&pageSize="
						+ pageSize + params;
				sb.append("<li> <option value='" + curl + "'>" + i
						+ "</option></li>");
			}
		}
		sb.append("</select></li>");
		sb.append("</ul>");

		return sb.toString();
	}

	public int getTotal() {
		return total;
	}

	public int getPageNumber() {
		return pageNumber;
	}

	public int getPageIndex() {
		return pageIndex;
	}

	public List<T> getElements() {
		return elements;
	}

	public Page<T> setElements(List<T> elements) {
		this.elements = elements;
		return this;
	}

	public int getFirst() {
		return first;
	}

	public int getPageSize() {
		return pageSize;
	}

	public Page<T> setPageSize(int pageSize) {
		this.pageSize = pageSize;
		return this;
	}

	public Page<T> setTotal(int total) {
		this.total = total;
		return this;
	}

	public Page<T> setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
		return this;
	}

	public Page<T> setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
		return this;
	}

	public Page<T> setFirst(int first) {
		this.first = first;
		return this;
	}

	public String getSysTime() {
		return sysTime;
	}

	public void setSysTime(String sysTime) {
		this.sysTime = sysTime;
	}

	public String getPageString() {
		return pageString;
	}

	public Page<T> setPageString(String pageString) {
		this.pageString = pageString;
		return this;
	}

	public Map<String, Object> getParams() {
		return params;
	}

	public Page<T> setParams(Map<String, Object> params) {
		this.params = params;
		return this;
	}

	public String getParamsString() {
		return paramsString;
	}

	public Page<T> setParamsString(String paramsString) {
		this.paramsString = paramsString;
		return this;
	}

	public String getUrl() {
		return url;
	}

	public Page<T> setUrl(String url) {
		this.url = url;
		return this;
	}

	public int getViewedNum() {
		return viewedNum;
	}

	public Page<T> setViewedNum(int viewedNum) {
		this.viewedNum = viewedNum;
		return this;
	}
}