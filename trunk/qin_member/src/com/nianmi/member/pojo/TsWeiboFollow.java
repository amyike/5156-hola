package com.nianmi.member.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * The persistent class for the ts_weibo_follow database table.
 * 
 */
@Entity
@Table(name = "ts_weibo_follow")
public class TsWeiboFollow implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "follow_id")
	private int followId;

	private int fid;

	private int type;// 0轻博，1小区，2同城

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

	public int getType() {
		return this.type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

}