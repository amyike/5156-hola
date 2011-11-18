package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_myop_myinvite database table.
 * 
 */
@Entity
@Table(name="ts_myop_myinvite")
public class TsMyopMyinvite extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private int appid;

	private int dateline;

	private int fromuid;

	private int hash;

	@Column(name="is_read")
	private byte isRead;

    @Lob()
	private String myml;

	private int touid;

	private byte type;

	private String typename;

    public TsMyopMyinvite() {
    }

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getAppid() {
		return this.appid;
	}

	public void setAppid(int appid) {
		this.appid = appid;
	}

	public int getDateline() {
		return this.dateline;
	}

	public void setDateline(int dateline) {
		this.dateline = dateline;
	}

	public int getFromuid() {
		return this.fromuid;
	}

	public void setFromuid(int fromuid) {
		this.fromuid = fromuid;
	}

	public int getHash() {
		return this.hash;
	}

	public void setHash(int hash) {
		this.hash = hash;
	}

	public byte getIsRead() {
		return this.isRead;
	}

	public void setIsRead(byte isRead) {
		this.isRead = isRead;
	}

	public String getMyml() {
		return this.myml;
	}

	public void setMyml(String myml) {
		this.myml = myml;
	}

	public int getTouid() {
		return this.touid;
	}

	public void setTouid(int touid) {
		this.touid = touid;
	}

	public byte getType() {
		return this.type;
	}

	public void setType(byte type) {
		this.type = type;
	}

	public String getTypename() {
		return this.typename;
	}

	public void setTypename(String typename) {
		this.typename = typename;
	}

}