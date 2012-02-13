package com.nianmi.member.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * The persistent class for the ts_user_group_link database table.
 * 
 */
@Entity
@Table(name = "ts_user_group_link")
public class TsUserGroupLink implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_gorup_link_id")
	private int userGorupLinkId;

	@ManyToOne(optional = false, fetch = FetchType.LAZY)
	@JoinColumn(name = "uid")
	private TsUser user;

	@ManyToOne(optional = false, fetch = FetchType.LAZY)
	@JoinColumn(name = "user_group_id")
	private TsUserGroup userGroup;

	@Column(name = "user_group_title")
	private String userGroupTitle;

	public TsUserGroupLink() {
	}

	public int getUserGorupLinkId() {
		return this.userGorupLinkId;
	}

	public void setUserGorupLinkId(int userGorupLinkId) {
		this.userGorupLinkId = userGorupLinkId;
	}

	public TsUser getUser() {
		return user;
	}

	public void setUser(TsUser user) {
		this.user = user;
	}

	public String getUserGroupTitle() {
		return this.userGroupTitle;
	}

	public void setUserGroupTitle(String userGroupTitle) {
		this.userGroupTitle = userGroupTitle;
	}

	public TsUserGroup getUserGroup() {
		return userGroup;
	}

	public void setUserGroup(TsUserGroup userGroup) {
		this.userGroup = userGroup;
	}
}