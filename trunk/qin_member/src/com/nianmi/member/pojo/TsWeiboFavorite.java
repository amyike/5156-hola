package com.nianmi.member.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_weibo_favorite database table.
 * 
 */
@Entity
@Table(name="ts_weibo_favorite")
public class TsWeiboFavorite implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private TsWeiboFavoritePK id;

    public TsWeiboFavorite() {
    }

	public TsWeiboFavoritePK getId() {
		return this.id;
	}

	public void setId(TsWeiboFavoritePK id) {
		this.id = id;
	}
	
}