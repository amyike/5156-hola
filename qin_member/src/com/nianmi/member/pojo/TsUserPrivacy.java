package com.nianmi.member.pojo;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * The persistent class for the ts_user_privacy database table.
 * 
 */
@Entity
@Table(name = "ts_user_privacy")
public class TsUserPrivacy implements Serializable {
	private static final long serialVersionUID = 1L;

	private String key;
	@Id
	private int uid;

	private String value;

	public TsUserPrivacy() {
	}

	public String getKey() {
		return this.key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getValue() {
		return this.value;
	}

	public void setValue(String value) {
		this.value = value;
	}

}