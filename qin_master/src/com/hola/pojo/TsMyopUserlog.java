package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_myop_userlog database table.
 * 
 */
@Entity
@Table(name="ts_myop_userlog")
public class TsMyopUserlog extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	private String action;

	private int dateline;

	private byte type;

	private int uid;

    public TsMyopUserlog() {
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

	public byte getType() {
		return this.type;
	}

	public void setType(byte type) {
		this.type = type;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

}