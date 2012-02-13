package com.nianmi.member.pojo;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * The persistent class for the ts_xqtopic_replies database table.
 * 
 */
@Entity
@Table(name = "ts_xqtopic_replies")
public class TsXqtopicReply implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String content;

	@Temporal(TemporalType.TIMESTAMP)
	private Date time;

	private int state;

	private int isRead;

	@ManyToOne(optional = false, fetch = FetchType.LAZY, cascade = CascadeType.REFRESH)
	@JoinColumn(name = "uid")
	private TsUser user;

	@ManyToOne(optional = false, fetch = FetchType.LAZY, cascade = CascadeType.REFRESH)
	@JoinColumn(name = "xqtopicid")
	private TsXqTopic xqTopic;

	public TsXqtopicReply() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getIsRead() {
		return isRead;
	}

	public void setIsRead(int isRead) {
		this.isRead = isRead;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public TsUser getUser() {
		return user;
	}

	public void setUser(TsUser user) {
		this.user = user;
	}

	public Date getTime() {
		return this.time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public TsXqTopic getXqTopic() {
		return xqTopic;
	}

	public void setXqTopic(TsXqTopic xqTopic) {
		this.xqTopic = xqTopic;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

}