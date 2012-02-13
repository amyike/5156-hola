package com.nianmi.master.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_weibo_mylike database table.
 * 
 */
@Entity
@Table(name="ts_weibo_mylike")
public class TsWeiboMylike implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private TsWeiboMylikePK id;

    public TsWeiboMylike() {
    }

	public TsWeiboMylikePK getId() {
		return this.id;
	}

	public void setId(TsWeiboMylikePK id) {
		this.id = id;
	}
	
}