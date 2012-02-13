package com.nianmi.master.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * The persistent class for the ts_xq_topics database table.
 * 
 */
@Entity
@Table(name = "ts_xq_topic")
public class TsXqTopic implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String content;

	private int state;
	private int type;

	@Temporal(TemporalType.TIMESTAMP)
	private Date time;

	private String title;

	@ManyToOne(optional = false, fetch = FetchType.LAZY)
	@JoinColumn(name = "uid")
	private TsUser user;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "xqid")
	private TsXqtable xqtable;

	@OneToMany(mappedBy = "xqTopic", fetch = FetchType.LAZY, cascade = CascadeType.REMOVE)
	@OrderBy("id desc")
	private Set<TsXqtopicReply> xqtopicReplies = new HashSet<TsXqtopicReply>();

	public TsXqTopic() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getState() {
		return this.state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public Date getTime() {
		return this.time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public TsUser getUser() {
		return user;
	}

	public void setUser(TsUser user) {
		this.user = user;
	}

	public Set<TsXqtopicReply> getXqtopicReplies() {
		return xqtopicReplies;
	}

	public void setXqtopicReplies(Set<TsXqtopicReply> xqtopicReplies) {
		this.xqtopicReplies = xqtopicReplies;
	}

	public TsXqtable getXqtable() {
		return xqtable;
	}

	public void setXqtable(TsXqtable xqtable) {
		this.xqtable = xqtable;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}
}