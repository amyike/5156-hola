package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_user_count database table.
 * 
 */
@Entity
@Table(name="ts_user_count")
public class TsUserCount extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int uid;

	private int atme;

	private int comment;

    public TsUserCount() {
    }

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public int getAtme() {
		return this.atme;
	}

	public void setAtme(int atme) {
		this.atme = atme;
	}

	public int getComment() {
		return this.comment;
	}

	public void setComment(int comment) {
		this.comment = comment;
	}

}