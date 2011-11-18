package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_attach database table.
 * 
 */
@Entity
@Table(name="ts_attach")
public class TsAttach extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	@Column(name="attach_type")
	private String attachType;

	private String extension;

	private String hash;

	private byte isDel;

	private String name;

	@Column(name="private")
	private byte private_;

	private byte savedomain;

	private String savename;

	private String savepath;

	private String size;

	private String type;

	private int uploadTime;

	private int userId;

    public TsAttach() {
    }

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAttachType() {
		return this.attachType;
	}

	public void setAttachType(String attachType) {
		this.attachType = attachType;
	}

	public String getExtension() {
		return this.extension;
	}

	public void setExtension(String extension) {
		this.extension = extension;
	}

	public String getHash() {
		return this.hash;
	}

	public void setHash(String hash) {
		this.hash = hash;
	}

	public byte getIsDel() {
		return this.isDel;
	}

	public void setIsDel(byte isDel) {
		this.isDel = isDel;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public byte getPrivate_() {
		return this.private_;
	}

	public void setPrivate_(byte private_) {
		this.private_ = private_;
	}

	public byte getSavedomain() {
		return this.savedomain;
	}

	public void setSavedomain(byte savedomain) {
		this.savedomain = savedomain;
	}

	public String getSavename() {
		return this.savename;
	}

	public void setSavename(String savename) {
		this.savename = savename;
	}

	public String getSavepath() {
		return this.savepath;
	}

	public void setSavepath(String savepath) {
		this.savepath = savepath;
	}

	public String getSize() {
		return this.size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getUploadTime() {
		return this.uploadTime;
	}

	public void setUploadTime(int uploadTime) {
		this.uploadTime = uploadTime;
	}

	public int getUserId() {
		return this.userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

}