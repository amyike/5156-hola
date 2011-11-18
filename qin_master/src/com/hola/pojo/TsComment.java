package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_comment database table.
 * 
 */
@Entity
@Table(name="ts_comment")
public class TsComment extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private int appid;

	private int appuid;

    @Lob()
	private String comment;

	private int cTime;

    @Lob()
	private String data;

	private String name;

	private byte quietly;

	private int status;

	@Column(name="to_uid")
	private int toUid;

	private int toId;

	private String type;

	private int uid;

    public TsComment() {
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

	public int getAppuid() {
		return this.appuid;
	}

	public void setAppuid(int appuid) {
		this.appuid = appuid;
	}

	public String getComment() {
		return this.comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public int getCTime() {
		return this.cTime;
	}

	public void setCTime(int cTime) {
		this.cTime = cTime;
	}

	public String getData() {
		return this.data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public byte getQuietly() {
		return this.quietly;
	}

	public void setQuietly(byte quietly) {
		this.quietly = quietly;
	}

	public int getStatus() {
		return this.status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getToUid() {
		return this.toUid;
	}

	public void setToUid(int toUid) {
		this.toUid = toUid;
	}

	public int getToId() {
		return this.toId;
	}

	public void setToId(int toId) {
		this.toId = toId;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

}