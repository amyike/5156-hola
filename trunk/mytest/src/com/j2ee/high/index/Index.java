package com.j2ee.high.index;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;

public class Index extends ActionSupport implements ServletRequestAware,
		ServletResponseAware {

	private static final long serialVersionUID = 1L;
	private HttpServletRequest req;
	private HttpServletResponse resp;

	@Override
	public String execute() throws Exception {
		System.out.println("Index execute()..................");
		return SUCCESS;
	}

	public void setServletResponse(HttpServletResponse response) {
		this.resp = response;
	}

	public void setServletRequest(HttpServletRequest request) {
		this.req = request;
	}
}
