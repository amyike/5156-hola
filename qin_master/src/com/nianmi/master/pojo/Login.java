package com.nianmi.master.pojo;

import java.io.Serializable;

public class Login extends BasePojo implements Serializable {

	private static final long serialVersionUID = 1L;

	private int uid;
	private String uname;

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

}
