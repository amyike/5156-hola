package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_ad database table.
 * 
 */
@Entity
@Table(name="ts_ad")
public class TsAd extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ad_id")
	private int adId;

    @Lob()
	private String content;

	private int ctime;

	@Column(name="display_order")
	private short displayOrder;

	@Column(name="is_active")
	private byte isActive;

	@Column(name="is_closable")
	private byte isClosable;

	private int mtime;

	private byte place;

	private String title;

    public TsAd() {
    }

	public int getAdId() {
		return this.adId;
	}

	public void setAdId(int adId) {
		this.adId = adId;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getCtime() {
		return this.ctime;
	}

	public void setCtime(int ctime) {
		this.ctime = ctime;
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

	public byte getIsClosable() {
		return this.isClosable;
	}

	public void setIsClosable(byte isClosable) {
		this.isClosable = isClosable;
	}

	public int getMtime() {
		return this.mtime;
	}

	public void setMtime(int mtime) {
		this.mtime = mtime;
	}

	public byte getPlace() {
		return this.place;
	}

	public void setPlace(byte place) {
		this.place = place;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

}