package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_user_privacy database table.
 * 
 */
@Entity
@Table(name="ts_user_privacy")
public class TsUserPrivacy extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	private String key;

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