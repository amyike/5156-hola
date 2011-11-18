package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_denounce database table.
 * 
 */
@Entity
@Table(name="ts_denounce")
public class TsDenounce extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private int aid;

	private String content;

	private int ctime;

	private String from;

	private int fuid;

    @Lob()
	private String reason;

	private byte state;

	private int uid;

    public TsDenounce() {
    }

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getAid() {
		return this.aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getCtime() {
		return this.ctime;
	}

	public void setCtime(int ctime) {
		this.ctime = ctime;
	}

	public String getFrom() {
		return this.from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public int getFuid() {
		return this.fuid;
	}

	public void setFuid(int fuid) {
		this.fuid = fuid;
	}

	public String getReason() {
		return this.reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public byte getState() {
		return this.state;
	}

	public void setState(byte state) {
		this.state = state;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

}