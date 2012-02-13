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

/**
 * The persistent class for the ts_message database table.
 * 
 */
@Entity
@Table(name = "ts_message")
public class TsMessage implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "message_id")
	private int messageId;

	private String content;

	private Date ctime;

	@Column(name = "deleted_by")
	private int deletedBy;

	private int type;

	@ManyToOne(optional = false, fetch = FetchType.LAZY)
	@JoinColumn(name = "from_uid")
	private TsUser fromUser;

	@Column(name = "is_lastest")
	private int isLastest;

	@Column(name = "is_read")
	private byte isRead;

	@Column(name = "source_message_id")
	private int sourceMessageId;

	private String title;

	@ManyToOne(optional = false, fetch = FetchType.LAZY)
	@JoinColumn(name = "to_uid")
	private TsUser toUser;

	public TsMessage() {
	}

	public int getMessageId() {
		return this.messageId;
	}

	public void setMessageId(int messageId) {
		this.messageId = messageId;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCtime() {
		return this.ctime;
	}

	public void setCtime(Date ctime) {
		this.ctime = ctime;
	}

	public int getDeletedBy() {
		return this.deletedBy;
	}

	public void setDeletedBy(int deletedBy) {
		this.deletedBy = deletedBy;
	}

	public int getIsLastest() {
		return this.isLastest;
	}

	public void setIsLastest(int isLastest) {
		this.isLastest = isLastest;
	}

	public byte getIsRead() {
		return this.isRead;
	}

	public void setIsRead(byte isRead) {
		this.isRead = isRead;
	}

	public int getSourceMessageId() {
		return this.sourceMessageId;
	}

	public void setSourceMessageId(int sourceMessageId) {
		this.sourceMessageId = sourceMessageId;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public TsUser getToUser() {
		return toUser;
	}

	public void setToUser(TsUser toUser) {
		this.toUser = toUser;
	}

	public TsUser getFromUser() {
		return fromUser;
	}

	public void setFromUser(TsUser fromUser) {
		this.fromUser = fromUser;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}
}