package com.nianmi.master.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_user_medal database table.
 * 
 */
@Entity
@Table(name="ts_user_medal")
public class TsUserMedal implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="user_medal_id")
	private int userMedalId;

    @Lob()
	private String data;

	@Column(name="is_active")
	private byte isActive;

	@Column(name="medal_id")
	private int medalId;

	private int uid;

    public TsUserMedal() {
    }

	public int getUserMedalId() {
		return this.userMedalId;
	}

	public void setUserMedalId(int userMedalId) {
		this.userMedalId = userMedalId;
	}

	public String getData() {
		return this.data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public byte getIsActive() {
		return this.isActive;
	}

	public void setIsActive(byte isActive) {
		this.isActive = isActive;
	}

	public int getMedalId() {
		return this.medalId;
	}

	public void setMedalId(int medalId) {
		this.medalId = medalId;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

}