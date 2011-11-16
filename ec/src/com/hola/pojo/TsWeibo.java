package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_weibo database table.
 * 
 */
@Entity
@Table(name="ts_weibo")
public class TsWeibo extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="weibo_id")
	private int weiboId;

	private int comment;

    @Lob()
	private String content;

	private int ctime;

	private byte from;

    @Lob()
	@Column(name="from_data")
	private String fromData;

	private byte isdel;

    @Lob()
	private String mytag;

	private int onlyshow;

    @Lob()
	@Column(name="text_bz")
	private String textBz;

	private String title;

	private int topic;

	private int transpond;

	@Column(name="transpond_id")
	private int transpondId;

	private String type;

    @Lob()
	@Column(name="type_data")
	private String typeData;

	private int uid;

    public TsWeibo() {
    }

	public int getWeiboId() {
		return this.weiboId;
	}

	public void setWeiboId(int weiboId) {
		this.weiboId = weiboId;
	}

	public int getComment() {
		return this.comment;
	}

	public void setComment(int comment) {
		this.comment = comment;
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

	public byte getFrom() {
		return this.from;
	}

	public void setFrom(byte from) {
		this.from = from;
	}

	public String getFromData() {
		return this.fromData;
	}

	public void setFromData(String fromData) {
		this.fromData = fromData;
	}

	public byte getIsdel() {
		return this.isdel;
	}

	public void setIsdel(byte isdel) {
		this.isdel = isdel;
	}

	public String getMytag() {
		return this.mytag;
	}

	public void setMytag(String mytag) {
		this.mytag = mytag;
	}

	public int getOnlyshow() {
		return this.onlyshow;
	}

	public void setOnlyshow(int onlyshow) {
		this.onlyshow = onlyshow;
	}

	public String getTextBz() {
		return this.textBz;
	}

	public void setTextBz(String textBz) {
		this.textBz = textBz;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getTopic() {
		return this.topic;
	}

	public void setTopic(int topic) {
		this.topic = topic;
	}

	public int getTranspond() {
		return this.transpond;
	}

	public void setTranspond(int transpond) {
		this.transpond = transpond;
	}

	public int getTranspondId() {
		return this.transpondId;
	}

	public void setTranspondId(int transpondId) {
		this.transpondId = transpondId;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getTypeData() {
		return this.typeData;
	}

	public void setTypeData(String typeData) {
		this.typeData = typeData;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

}