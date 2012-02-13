package com.nianmi.master.pojo;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
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
 * The persistent class for the ts_weibo_comment database table.
 * 
 */
@Entity
@Table(name = "ts_weibo_comment")
public class TsWeiboComment implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "comment_id")
	private int commentId;

	private String content;

	@Temporal(TemporalType.TIMESTAMP)
	private Date ctime;

	private int isdel;

	private int type;

	@Column(name = "reply_comment_id")
	private int replyCommentId;

	@ManyToOne(optional = false, fetch = FetchType.LAZY)
	@JoinColumn(name = "reply_uid")
	private TsUser replyUser;

	@ManyToOne(optional = false, fetch = FetchType.LAZY)
	@JoinColumn(name = "uid")
	private TsUser user;

	@Column(name = "weibo_id")
	private int weiboId;

	public TsWeiboComment() {
	}

	public int getCommentId() {
		return this.commentId;
	}

	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCtime() {
		return ctime;
	}

	public void setCtime(Date ctime) {
		this.ctime = ctime;
	}

	public int getIsdel() {
		return isdel;
	}

	public void setIsdel(int isdel) {
		this.isdel = isdel;
	}

	public int getReplyCommentId() {
		return replyCommentId;
	}

	public void setReplyCommentId(int replyCommentId) {
		this.replyCommentId = replyCommentId;
	}

	public TsUser getReplyUser() {
		return replyUser;
	}

	public void setReplyUser(TsUser replyUser) {
		this.replyUser = replyUser;
	}

	public TsUser getUser() {
		return user;
	}

	public void setUser(TsUser user) {
		this.user = user;
	}

	public int getWeiboId() {
		return weiboId;
	}

	public void setWeiboId(int weiboId) {
		this.weiboId = weiboId;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}
}