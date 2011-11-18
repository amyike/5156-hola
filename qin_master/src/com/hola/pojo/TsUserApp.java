package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_user_app database table.
 * 
 */
@Entity
@Table(name="ts_user_app")
public class TsUserApp extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="user_app_id")
	private int userAppId;

	@Column(name="app_id")
	private int appId;

	private int ctime;

	@Column(name="display_order")
	private int displayOrder;

	private int uid;

    public TsUserApp() {
    }

	public int getUserAppId() {
		return this.userAppId;
	}

	public void setUserAppId(int userAppId) {
		this.userAppId = userAppId;
	}

	public int getAppId() {
		return this.appId;
	}

	public void setAppId(int appId) {
		this.appId = appId;
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

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

}