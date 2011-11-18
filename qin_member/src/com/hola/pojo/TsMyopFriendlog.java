package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_myop_friendlog database table.
 * 
 */
@Entity
@Table(name="ts_myop_friendlog")
public class TsMyopFriendlog extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	private String action;

	private int dateline;

	private int fuid;

	private int uid;

    public TsMyopFriendlog() {
    }

	public String getAction() {
		return this.action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public int getDateline() {
		return this.dateline;
	}

	public void setDateline(int dateline) {
		this.dateline = dateline;
	}

	public int getFuid() {
		return this.fuid;
	}

	public void setFuid(int fuid) {
		this.fuid = fuid;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

}