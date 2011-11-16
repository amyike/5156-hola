package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_weibo_star database table.
 * 
 */
@Entity
@Table(name="ts_weibo_star")
public class TsWeiboStar extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="star_id")
	private int starId;

	private int ctime;

	@Column(name="star_group_id")
	private int starGroupId;

	private int uid;

    public TsWeiboStar() {
    }

	public int getStarId() {
		return this.starId;
	}

	public void setStarId(int starId) {
		this.starId = starId;
	}

	public int getCtime() {
		return this.ctime;
	}

	public void setCtime(int ctime) {
		this.ctime = ctime;
	}

	public int getStarGroupId() {
		return this.starGroupId;
	}

	public void setStarGroupId(int starGroupId) {
		this.starGroupId = starGroupId;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

}