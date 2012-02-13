package com.nianmi.master.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_xqtopic_favorite database table.
 * 
 */
@Entity
@Table(name="ts_xqtopic_favorite")
public class TsXqtopicFavorite implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private int uid;

	private int xqtopicid;

    public TsXqtopicFavorite() {
    }

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public int getXqtopicid() {
		return this.xqtopicid;
	}

	public void setXqtopicid(int xqtopicid) {
		this.xqtopicid = xqtopicid;
	}

}