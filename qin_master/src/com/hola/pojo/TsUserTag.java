package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_user_tag database table.
 * 
 */
@Entity
@Table(name="ts_user_tag")
public class TsUserTag extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="user_tag_id")
	private int userTagId;

	@Column(name="tag_id")
	private int tagId;

	private int uid;

    public TsUserTag() {
    }

	public int getUserTagId() {
		return this.userTagId;
	}

	public void setUserTagId(int userTagId) {
		this.userTagId = userTagId;
	}

	public int getTagId() {
		return this.tagId;
	}

	public void setTagId(int tagId) {
		this.tagId = tagId;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

}