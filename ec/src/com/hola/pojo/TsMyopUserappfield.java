package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_myop_userappfield database table.
 * 
 */
@Entity
@Table(name="ts_myop_userappfield")
public class TsMyopUserappfield extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	private int appid;

    @Lob()
	private String myml;

    @Lob()
	private String profilelink;

	private int uid;

    public TsMyopUserappfield() {
    }

	public int getAppid() {
		return this.appid;
	}

	public void setAppid(int appid) {
		this.appid = appid;
	}

	public String getMyml() {
		return this.myml;
	}

	public void setMyml(String myml) {
		this.myml = myml;
	}

	public String getProfilelink() {
		return this.profilelink;
	}

	public void setProfilelink(String profilelink) {
		this.profilelink = profilelink;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

}