package com.nianmi.member.pojo;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * The persistent class for the ts_user_online database table.
 * 
 */
@Entity
@Table(name = "ts_user_online")
public class TsUserOnline implements Serializable {
	private static final long serialVersionUID = 1L;

	private int ctime;
	@Id
	private int uid;

	public TsUserOnline() {
	}

	public int getCtime() {
		return this.ctime;
	}

	public void setCtime(int ctime) {
		this.ctime = ctime;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

}