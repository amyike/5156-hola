package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_document database table.
 * 
 */
@Entity
@Table(name="ts_document")
public class TsDocument extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="document_id")
	private int documentId;

	@Column(name="author_id")
	private int authorId;

    @Lob()
	private String content;

	private int ctime;

	@Column(name="display_order")
	private int displayOrder;

	@Column(name="is_active")
	private byte isActive;

	@Column(name="is_on_footer")
	private byte isOnFooter;

	@Column(name="last_editor_id")
	private int lastEditorId;

	private int mtime;

	private String title;

    public TsDocument() {
    }

	public int getDocumentId() {
		return this.documentId;
	}

	public void setDocumentId(int documentId) {
		this.documentId = documentId;
	}

	public int getAuthorId() {
		return this.authorId;
	}

	public void setAuthorId(int authorId) {
		this.authorId = authorId;
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

	public int getDisplayOrder() {
		return this.displayOrder;
	}

	public void setDisplayOrder(int displayOrder) {
		this.displayOrder = displayOrder;
	}

	public byte getIsActive() {
		return this.isActive;
	}

	public void setIsActive(byte isActive) {
		this.isActive = isActive;
	}

	public byte getIsOnFooter() {
		return this.isOnFooter;
	}

	public void setIsOnFooter(byte isOnFooter) {
		this.isOnFooter = isOnFooter;
	}

	public int getLastEditorId() {
		return this.lastEditorId;
	}

	public void setLastEditorId(int lastEditorId) {
		this.lastEditorId = lastEditorId;
	}

	public int getMtime() {
		return this.mtime;
	}

	public void setMtime(int mtime) {
		this.mtime = mtime;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

}