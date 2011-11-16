package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_template database table.
 * 
 */
@Entity
@Table(name="ts_template")
public class TsTemplate extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="tpl_id")
	private int tplId;

	private String alias;

    @Lob()
	private String body;

	private int ctime;

	@Column(name="is_cache")
	private byte isCache;

	private String lang;

	private String name;

    @Lob()
	private String title;

	private String type;

	private String type2;

    public TsTemplate() {
    }

	public int getTplId() {
		return this.tplId;
	}

	public void setTplId(int tplId) {
		this.tplId = tplId;
	}

	public String getAlias() {
		return this.alias;
	}

	public void setAlias(String alias) {
		this.alias = alias;
	}

	public String getBody() {
		return this.body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	public int getCtime() {
		return this.ctime;
	}

	public void setCtime(int ctime) {
		this.ctime = ctime;
	}

	public byte getIsCache() {
		return this.isCache;
	}

	public void setIsCache(byte isCache) {
		this.isCache = isCache;
	}

	public String getLang() {
		return this.lang;
	}

	public void setLang(String lang) {
		this.lang = lang;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getType2() {
		return this.type2;
	}

	public void setType2(String type2) {
		this.type2 = type2;
	}

}