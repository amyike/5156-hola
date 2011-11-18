package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_friend_group_link database table.
 * 
 */
@Entity
@Table(name="ts_friend_group_link")
public class TsFriendGroupLink extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Column(name="friend_group_id")
	private int friendGroupId;

	@Column(name="friend_uid")
	private int friendUid;

	@Column(name="friend_uname")
	private String friendUname;

	private byte status;

	private int uid;

    public TsFriendGroupLink() {
    }

	public int getFriendGroupId() {
		return this.friendGroupId;
	}

	public void setFriendGroupId(int friendGroupId) {
		this.friendGroupId = friendGroupId;
	}

	public int getFriendUid() {
		return this.friendUid;
	}

	public void setFriendUid(int friendUid) {
		this.friendUid = friendUid;
	}

	public String getFriendUname() {
		return this.friendUname;
	}

	public void setFriendUname(String friendUname) {
		this.friendUname = friendUname;
	}

	public byte getStatus() {
		return this.status;
	}

	public void setStatus(byte status) {
		this.status = status;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

}