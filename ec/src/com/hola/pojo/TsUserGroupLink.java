package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_user_group_link database table.
 * 
 */
@Entity
@Table(name="ts_user_group_link")
public class TsUserGroupLink extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="user_gorup_link_id")
	private int userGorupLinkId;

	private int uid;

	@Column(name="user_group_id")
	private int userGroupId;

	@Column(name="user_group_title")
	private String userGroupTitle;

    public TsUserGroupLink() {
    }

	public int getUserGorupLinkId() {
		return this.userGorupLinkId;
	}

	public void setUserGorupLinkId(int userGorupLinkId) {
		this.userGorupLinkId = userGorupLinkId;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public int getUserGroupId() {
		return this.userGroupId;
	}

	public void setUserGroupId(int userGroupId) {
		this.userGroupId = userGroupId;
	}

	public String getUserGroupTitle() {
		return this.userGroupTitle;
	}

	public void setUserGroupTitle(String userGroupTitle) {
		this.userGroupTitle = userGroupTitle;
	}

}