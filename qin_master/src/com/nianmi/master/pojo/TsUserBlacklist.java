package com.nianmi.master.pojo;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * The persistent class for the ts_user_blacklist database table.
 * 
 */
@Entity
@Table(name = "ts_user_blacklist")
public class TsUserBlacklist implements Serializable {
	private static final long serialVersionUID = 1L;

	private int ctime;
	@Id
	private int fid;
	@Id
	private int uid;

	public TsUserBlacklist() {
	}

	public int getCtime() {
		return this.ctime;
	}

	public void setCtime(int ctime) {
		this.ctime = ctime;
	}

	public int getFid() {
		return this.fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

}