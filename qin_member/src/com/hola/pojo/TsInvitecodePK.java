package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the ts_invitecode database table.
 * 
 */
@Embeddable
public class TsInvitecodePK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="invite_code_id")
	private int inviteCodeId;

	private int uid;

    public TsInvitecodePK() {
    }
	public int getInviteCodeId() {
		return this.inviteCodeId;
	}
	public void setInviteCodeId(int inviteCodeId) {
		this.inviteCodeId = inviteCodeId;
	}
	public int getUid() {
		return this.uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof TsInvitecodePK)) {
			return false;
		}
		TsInvitecodePK castOther = (TsInvitecodePK)other;
		return 
			(this.inviteCodeId == castOther.inviteCodeId)
			&& (this.uid == castOther.uid);

    }
    
	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.inviteCodeId;
		hash = hash * prime + this.uid;
		
		return hash;
    }
}