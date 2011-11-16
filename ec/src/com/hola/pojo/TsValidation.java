package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_validation database table.
 * 
 */
@Entity
@Table(name="ts_validation")
public class TsValidation extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="validation_id")
	private int validationId;

	private String code;

	private int ctime;

    @Lob()
	private String data;

	@Column(name="from_uid")
	private int fromUid;

	@Column(name="is_active")
	private byte isActive;

	@Column(name="target_url")
	private String targetUrl;

	@Column(name="to_user")
	private String toUser;

	private String type;

    public TsValidation() {
    }

	public int getValidationId() {
		return this.validationId;
	}

	public void setValidationId(int validationId) {
		this.validationId = validationId;
	}

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public int getCtime() {
		return this.ctime;
	}

	public void setCtime(int ctime) {
		this.ctime = ctime;
	}

	public String getData() {
		return this.data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public int getFromUid() {
		return this.fromUid;
	}

	public void setFromUid(int fromUid) {
		this.fromUid = fromUid;
	}

	public byte getIsActive() {
		return this.isActive;
	}

	public void setIsActive(byte isActive) {
		this.isActive = isActive;
	}

	public String getTargetUrl() {
		return this.targetUrl;
	}

	public void setTargetUrl(String targetUrl) {
		this.targetUrl = targetUrl;
	}

	public String getToUser() {
		return this.toUser;
	}

	public void setToUser(String toUser) {
		this.toUser = toUser;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

}