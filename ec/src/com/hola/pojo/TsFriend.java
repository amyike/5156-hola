package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_friend database table.
 * 
 */
@Entity
@Table(name="ts_friend")
public class TsFriend extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="friend_id")
	private int friendId;

	private int ctime;

	@Column(name="friend_uid")
	private int friendUid;

	@Column(name="friend_uname")
	private String friendUname;

	private String message;

	private byte status;

	private int uid;

    public TsFriend() {
    }

	public int getFriendId() {
		return this.friendId;
	}

	public void setFriendId(int friendId) {
		this.friendId = friendId;
	}

	public int getCtime() {
		return this.ctime;
	}

	public void setCtime(int ctime) {
		this.ctime = ctime;
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

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
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