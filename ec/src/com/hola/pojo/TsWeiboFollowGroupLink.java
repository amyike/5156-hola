package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_weibo_follow_group_link database table.
 * 
 */
@Entity
@Table(name="ts_weibo_follow_group_link")
public class TsWeiboFollowGroupLink extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="follow_group_link_id")
	private int followGroupLinkId;

	@Column(name="follow_group_id")
	private int followGroupId;

	@Column(name="follow_id")
	private int followId;

	private int uid;

    public TsWeiboFollowGroupLink() {
    }

	public int getFollowGroupLinkId() {
		return this.followGroupLinkId;
	}

	public void setFollowGroupLinkId(int followGroupLinkId) {
		this.followGroupLinkId = followGroupLinkId;
	}

	public int getFollowGroupId() {
		return this.followGroupId;
	}

	public void setFollowGroupId(int followGroupId) {
		this.followGroupId = followGroupId;
	}

	public int getFollowId() {
		return this.followId;
	}

	public void setFollowId(int followId) {
		this.followId = followId;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

}