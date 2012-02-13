package com.nianmi.member.pojo;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the ts_weibo_mylike database table.
 * 
 */
@Embeddable
public class TsWeiboMylikePK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	private int uid;

	@Column(name="weibo_id")
	private int weiboId;

    public TsWeiboMylikePK() {
    }
	public int getUid() {
		return this.uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getWeiboId() {
		return this.weiboId;
	}
	public void setWeiboId(int weiboId) {
		this.weiboId = weiboId;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof TsWeiboMylikePK)) {
			return false;
		}
		TsWeiboMylikePK castOther = (TsWeiboMylikePK)other;
		return 
			(this.uid == castOther.uid)
			&& (this.weiboId == castOther.weiboId);

    }
    
	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.uid;
		hash = hash * prime + this.weiboId;
		
		return hash;
    }
}