package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_notify database table.
 * 
 */
@Entity
@Table(name="ts_notify")
public class TsNotify extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="notify_id")
	private int notifyId;

	private int ctime;

    @Lob()
	private String data;

	private int from;

	@Column(name="is_read")
	private byte isRead;

	private int receive;

	private String type;

    public TsNotify() {
    }

	public int getNotifyId() {
		return this.notifyId;
	}

	public void setNotifyId(int notifyId) {
		this.notifyId = notifyId;
	}

	public int getCtime() {
		return this.ctime;
	}

	public void setCtime(int ctime) {
		this.ctime = ctime;
	}

	public String getData() {
		return this.data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public int getFrom() {
		return this.from;
	}

	public void setFrom(int from) {
		this.from = from;
	}

	public byte getIsRead() {
		return this.isRead;
	}

	public void setIsRead(byte isRead) {
		this.isRead = isRead;
	}

	public int getReceive() {
		return this.receive;
	}

	public void setReceive(int receive) {
		this.receive = receive;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

}