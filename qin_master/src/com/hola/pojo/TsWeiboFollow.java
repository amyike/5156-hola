package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_weibo_follow database table.
 * 
 */
@Entity
@Table(name="ts_weibo_follow")
public class TsWeiboFollow extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="follow_id")
	private int followId;

	private int fid;

	private byte type;

	private int uid;

    public TsWeiboFollow() {
    }

	public int getFollowId() {
		return this.followId;
	}

	public void setFollowId(int followId) {
		this.followId = followId;
	}

	public int getFid() {
		return this.fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}

	public byte getType() {
		return this.type;
	}

	public void setType(byte type) {
		this.type = type;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

}