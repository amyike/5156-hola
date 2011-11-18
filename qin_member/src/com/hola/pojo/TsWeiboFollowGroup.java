package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_weibo_follow_group database table.
 * 
 */
@Entity
@Table(name="ts_weibo_follow_group")
public class TsWeiboFollowGroup extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="follow_group_id")
	private int followGroupId;

	private int ctime;

	private String title;

	private int uid;

    public TsWeiboFollowGroup() {
    }

	public int getFollowGroupId() {
		return this.followGroupId;
	}

	public void setFollowGroupId(int followGroupId) {
		this.followGroupId = followGroupId;
	}

	public int getCtime() {
		return this.ctime;
	}

	public void setCtime(int ctime) {
		this.ctime = ctime;
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