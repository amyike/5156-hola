package com.nianmi.member.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_invite_record database table.
 * 
 */
@Entity
@Table(name="ts_invite_record")
public class TsInviteRecord implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="invite_record_id")
	private int inviteRecordId;

	private int ctime;

	private int fid;

	private int uid;

    public TsInviteRecord() {
    }

	public int getInviteRecordId() {
		return this.inviteRecordId;
	}

	public void setInviteRecordId(int inviteRecordId) {
		this.inviteRecordId = inviteRecordId;
	}

	public int getCtime() {
		return this.ctime;
	}

	public void setCtime(int ctime) {
		this.ctime = ctime;
	}

	public int getFid() {
		return this.fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

}