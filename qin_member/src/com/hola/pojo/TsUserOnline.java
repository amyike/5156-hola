package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_user_online database table.
 * 
 */
@Entity
@Table(name="ts_user_online")
public class TsUserOnline extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	private int ctime;

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