package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_friend_group database table.
 * 
 */
@Entity
@Table(name="ts_friend_group")
public class TsFriendGroup extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="friend_group_id")
	private int friendGroupId;

	private String title;

	private int uid;

    public TsFriendGroup() {
    }

	public int getFriendGroupId() {
		return this.friendGroupId;
	}

	public void setFriendGroupId(int friendGroupId) {
		this.friendGroupId = friendGroupId;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

}