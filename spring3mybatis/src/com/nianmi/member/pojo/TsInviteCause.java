package com.nianmi.member.pojo;

import java.io.Serializable;

/**
 * The persistent class for the ts_invite_cause database table.
 * 
 */

public class TsInviteCause implements Serializable {

	private static final long serialVersionUID = 1L;

	private int id;

	private String contact;

	private String hobby;

	private String link;

	private String reason;

	private int status;

	public TsInviteCause() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getContact() {
		return this.contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getHobby() {
		return this.hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getLink() {
		return this.link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getReason() {
		return this.reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	@Override
	public String toString() {
		StringBuffer sb = new StringBuffer();
		sb.append("id:").append(id).append("reason").append(reason);
		return sb.toString();
	}
}