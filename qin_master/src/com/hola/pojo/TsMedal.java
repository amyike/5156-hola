package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_medal database table.
 * 
 */
@Entity
@Table(name="ts_medal")
public class TsMedal extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="medal_id")
	private int medalId;

	private int ctime;

    @Lob()
	private String data;

	@Column(name="display_order")
	private short displayOrder;

	@Column(name="is_active")
	private byte isActive;

	@Column(name="path_name")
	private String pathName;

	private String title;

    public TsMedal() {
    }

	public int getMedalId() {
		return this.medalId;
	}

	public void setMedalId(int medalId) {
		this.medalId = medalId;
	}

	public int getCtime() {
		return this.ctime;
	}

	public void setCtime(int ctime) {
		this.ctime = ctime;
	}

	public String getData() {
		return this.data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public short getDisplayOrder() {
		return this.displayOrder;
	}

	public void setDisplayOrder(short displayOrder) {
		this.displayOrder = displayOrder;
	}

	public byte getIsActive() {
		return this.isActive;
	}

	public void setIsActive(byte isActive) {
		this.isActive = isActive;
	}

	public String getPathName() {
		return this.pathName;
	}

	public void setPathName(String pathName) {
		this.pathName = pathName;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

}