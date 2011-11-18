package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_myop_myapp database table.
 * 
 */
@Entity
@Table(name="ts_myop_myapp")
public class TsMyopMyapp extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int appid;

	private String appname;

	private byte displaymethod;

	private int displayorder;

	private byte flag;

	private byte narrow;

	private int version;

    public TsMyopMyapp() {
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

	public byte getDisplaymethod() {
		return this.displaymethod;
	}

	public void setDisplaymethod(byte displaymethod) {
		this.displaymethod = displaymethod;
	}

	public int getDisplayorder() {
		return this.displayorder;
	}

	public void setDisplayorder(int displayorder) {
		this.displayorder = displayorder;
	}

	public byte getFlag() {
		return this.flag;
	}

	public void setFlag(byte flag) {
		this.flag = flag;
	}

	public byte getNarrow() {
		return this.narrow;
	}

	public void setNarrow(byte narrow) {
		this.narrow = narrow;
	}

	public int getVersion() {
		return this.version;
	}

	public void setVersion(int version) {
		this.version = version;
	}

}