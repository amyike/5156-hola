package com.nianmi.master.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_user_group_popedom database table.
 * 
 */
@Entity
@Table(name="ts_user_group_popedom")
public class TsUserGroupPopedom implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="user_group_popedom_id")
	private int userGroupPopedomId;

	@Column(name="node_id")
	private int nodeId;

	@Column(name="user_group_id")
	private int userGroupId;

    public TsUserGroupPopedom() {
    }

	public int getUserGroupPopedomId() {
		return this.userGroupPopedomId;
	}

	public void setUserGroupPopedomId(int userGroupPopedomId) {
		this.userGroupPopedomId = userGroupPopedomId;
	}

	public int getNodeId() {
		return this.nodeId;
	}

	public void setNodeId(int nodeId) {
		this.nodeId = nodeId;
	}

	public int getUserGroupId() {
		return this.userGroupId;
	}

	public void setUserGroupId(int userGroupId) {
		this.userGroupId = userGroupId;
	}

}