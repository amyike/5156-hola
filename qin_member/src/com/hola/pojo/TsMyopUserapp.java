package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_myop_userapp database table.
 * 
 */
@Entity
@Table(name="ts_myop_userapp")
public class TsMyopUserapp extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	private byte allowfeed;

	private byte allowprofilelink;

	private byte allowsidenav;

	private int appid;

	private String appname;

	private short displayorder;

    @Lob()
	private String ext;

	private short menuorder;

	private byte narrow;

	private byte privacy;

	private int uid;

    public TsMyopUserapp() {
    }

	public byte getAllowfeed() {
		return this.allowfeed;
	}

	public void setAllowfeed(byte allowfeed) {
		this.allowfeed = allowfeed;
	}

	public byte getAllowprofilelink() {
		return this.allowprofilelink;
	}

	public void setAllowprofilelink(byte allowprofilelink) {
		this.allowprofilelink = allowprofilelink;
	}

	public byte getAllowsidenav() {
		return this.allowsidenav;
	}

	public void setAllowsidenav(byte allowsidenav) {
		this.allowsidenav = allowsidenav;
	}

	public int getAppid() {
		return this.appid;
	}

	public void setAppid(int appid) {
		this.appid = appid;
	}

	public String getAppname() {
		return this.appname;
	}

	public void setAppname(String appname) {
		this.appname = appname;
	}

	public short getDisplayorder() {
		return this.displayorder;
	}

	public void setDisplayorder(short displayorder) {
		this.displayorder = displayorder;
	}

	public String getExt() {
		return this.ext;
	}

	public void setExt(String ext) {
		this.ext = ext;
	}

	public short getMenuorder() {
		return this.menuorder;
	}

	public void setMenuorder(short menuorder) {
		this.menuorder = menuorder;
	}

	public byte getNarrow() {
		return this.narrow;
	}

	public void setNarrow(byte narrow) {
		this.narrow = narrow;
	}

	public byte getPrivacy() {
		return this.privacy;
	}

	public void setPrivacy(byte privacy) {
		this.privacy = privacy;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

}