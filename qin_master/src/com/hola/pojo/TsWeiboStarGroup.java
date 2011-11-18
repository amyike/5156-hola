package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_weibo_star_group database table.
 * 
 */
@Entity
@Table(name="ts_weibo_star_group")
public class TsWeiboStarGroup extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="star_group_id")
	private int starGroupId;

	private int ctime;

	@Column(name="display_order")
	private int displayOrder;

	private String title;

	@Column(name="top_group_id")
	private int topGroupId;

    public TsWeiboStarGroup() {
    }

	public int getStarGroupId() {
		return this.starGroupId;
	}

	public void setStarGroupId(int starGroupId) {
		this.starGroupId = starGroupId;
	}

	public int getCtime() {
		return this.ctime;
	}

	public void setCtime(int ctime) {
		this.ctime = ctime;
	}

	public int getDisplayOrder() {
		return this.displayOrder;
	}

	public void setDisplayOrder(int displayOrder) {
		this.displayOrder = displayOrder;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getTopGroupId() {
		return this.topGroupId;
	}

	public void setTopGroupId(int topGroupId) {
		this.topGroupId = topGroupId;
	}

}