package com.nianmi.member.pojo;

import java.io.Serializable;
import java.util.Date;

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
 * The persistent class for the ts_xq_notice database table.
 * 
 */
@Entity
@Table(name = "ts_xq_notice")
public class TsXqNotice implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String content;

	@Temporal(TemporalType.TIMESTAMP)
	private Date time;

	private String title;

	private int state;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "uid")
	private TsUser user;

	@ManyToOne(optional = false, fetch = FetchType.LAZY)
	@JoinColumn(name = "xq_id")
	private TsXqtable xqtable;

	public TsXqNotice() {
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

	/**
	 * @return the user
	 */
	public TsUser getUser() {
		return user;
	}

	/**
	 * @return the state
	 */
	public int getState() {
		return state;
	}

	/**
	 * @param state
	 *            the state to set
	 */
	public void setState(int state) {
		this.state = state;
	}

	/**
	 * @param user
	 *            the user to set
	 */
	public void setUser(TsUser user) {
		this.user = user;
	}

	public TsXqtable getXqtable() {
		return xqtable;
	}

	public void setXqtable(TsXqtable xqtable) {
		this.xqtable = xqtable;
	}
}