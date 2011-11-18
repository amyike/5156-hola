package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_login_record database table.
 * 
 */
@Entity
@Table(name="ts_login_record")
public class TsLoginRecord extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="login_record_id")
	private int loginRecordId;

	private int ctime;

	private String ip;

	private String place;

	private int uid;

    public TsLoginRecord() {
    }

	public int getLoginRecordId() {
		return this.loginRecordId;
	}

	public void setLoginRecordId(int loginRecordId) {
		this.loginRecordId = loginRecordId;
	}

	public int getCtime() {
		return this.ctime;
	}

	public void setCtime(int ctime) {
		this.ctime = ctime;
	}

	public String getIp() {
		return this.ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getPlace() {
		return this.place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

}