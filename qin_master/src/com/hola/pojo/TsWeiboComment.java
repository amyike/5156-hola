package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_weibo_comment database table.
 * 
 */
@Entity
@Table(name="ts_weibo_comment")
public class TsWeiboComment extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="comment_id")
	private int commentId;

    @Lob()
	private String content;

	private int ctime;

	private byte isdel;

	@Column(name="reply_comment_id")
	private int replyCommentId;

	@Column(name="reply_uid")
	private int replyUid;

	private int uid;

	@Column(name="weibo_id")
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

	public int getCtime() {
		return this.ctime;
	}

	public void setCtime(int ctime) {
		this.ctime = ctime;
	}

	public byte getIsdel() {
		return this.isdel;
	}

	public void setIsdel(byte isdel) {
		this.isdel = isdel;
	}

	public int getReplyCommentId() {
		return this.replyCommentId;
	}

	public void setReplyCommentId(int replyCommentId) {
		this.replyCommentId = replyCommentId;
	}

	public int getReplyUid() {
		return this.replyUid;
	}

	public void setReplyUid(int replyUid) {
		this.replyUid = replyUid;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public int getWeiboId() {
		return this.weiboId;
	}

	public void setWeiboId(int weiboId) {
		this.weiboId = weiboId;
	}

}