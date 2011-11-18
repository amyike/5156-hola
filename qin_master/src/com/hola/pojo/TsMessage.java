package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_message database table.
 * 
 */
@Entity
@Table(name="ts_message")
public class TsMessage extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="message_id")
	private int messageId;

    @Lob()
	private String content;

	private int ctime;

	@Column(name="deleted_by")
	private int deletedBy;

	@Column(name="from_uid")
	private int fromUid;

	@Column(name="is_lastest")
	private byte isLastest;

	@Column(name="is_read")
	private byte isRead;

	@Column(name="source_message_id")
	private int sourceMessageId;

	private String title;

	@Column(name="to_uid")
	private int toUid;

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

	public int getCtime() {
		return this.ctime;
	}

	public void setCtime(int ctime) {
		this.ctime = ctime;
	}

	public int getDeletedBy() {
		return this.deletedBy;
	}

	public void setDeletedBy(int deletedBy) {
		this.deletedBy = deletedBy;
	}

	public int getFromUid() {
		return this.fromUid;
	}

	public void setFromUid(int fromUid) {
		this.fromUid = fromUid;
	}

	public byte getIsLastest() {
		return this.isLastest;
	}

	public void setIsLastest(byte isLastest) {
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

	public int getToUid() {
		return this.toUid;
	}

	public void setToUid(int toUid) {
		this.toUid = toUid;
	}

}