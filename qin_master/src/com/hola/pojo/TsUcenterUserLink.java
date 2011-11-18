package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_ucenter_user_link database table.
 * 
 */
@Entity
@Table(name="ts_ucenter_user_link")
public class TsUcenterUserLink extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Column(name="uc_uid")
	private int ucUid;

	@Column(name="uc_username")
	private String ucUsername;

	private int uid;

    public TsUcenterUserLink() {
    }

	public int getUcUid() {
		return this.ucUid;
	}

	public void setUcUid(int ucUid) {
		this.ucUid = ucUid;
	}

	public String getUcUsername() {
		return this.ucUsername;
	}

	public void setUcUsername(String ucUsername) {
		this.ucUsername = ucUsername;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

}