package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_invitecode database table.
 * 
 */
@Entity
@Table(name="ts_invitecode")
public class TsInvitecode extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private TsInvitecodePK id;

	private String code;

	@Column(name="is_received")
	private byte isReceived;

	@Column(name="is_used")
	private byte isUsed;

	private String type;

    public TsInvitecode() {
    }

	public TsInvitecodePK getId() {
		return this.id;
	}

	public void setId(TsInvitecodePK id) {
		this.id = id;
	}
	
	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public byte getIsReceived() {
		return this.isReceived;
	}

	public void setIsReceived(byte isReceived) {
		this.isReceived = isReceived;
	}

	public byte getIsUsed() {
		return this.isUsed;
	}

	public void setIsUsed(byte isUsed) {
		this.isUsed = isUsed;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

}