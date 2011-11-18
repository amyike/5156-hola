package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_weibo_atme database table.
 * 
 */
@Entity
@Table(name="ts_weibo_atme")
public class TsWeiboAtme extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	private int uid;

	@Column(name="weibo_id")
	private int weiboId;

    public TsWeiboAtme() {
    }

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public int getWeiboId() {
		return this.weiboId;
	}

	public void setWeiboId(int weiboId) {
		this.weiboId = weiboId;
	}

}