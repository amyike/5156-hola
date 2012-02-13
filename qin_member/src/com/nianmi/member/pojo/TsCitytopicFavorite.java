package com.nianmi.member.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_citytopic_favorite database table.
 * 
 */
@Entity
@Table(name="ts_citytopic_favorite")
public class TsCitytopicFavorite implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private int citytopicid;

	private int uid;

    public TsCitytopicFavorite() {
    }

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCitytopicid() {
		return this.citytopicid;
	}

	public void setCitytopicid(int citytopicid) {
		this.citytopicid = citytopicid;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

}