package com.nianmi.member.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_user_set database table.
 * 
 */
@Entity
@Table(name="ts_user_set")
public class TsUserSet implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private String fieldkey;

	private String fieldname;

	private String module;

	private byte showspace;

	private byte status;

    public TsUserSet() {
    }

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFieldkey() {
		return this.fieldkey;
	}

	public void setFieldkey(String fieldkey) {
		this.fieldkey = fieldkey;
	}

	public String getFieldname() {
		return this.fieldname;
	}

	public void setFieldname(String fieldname) {
		this.fieldname = fieldname;
	}

	public String getModule() {
		return this.module;
	}

	public void setModule(String module) {
		this.module = module;
	}

	public byte getShowspace() {
		return this.showspace;
	}

	public void setShowspace(byte showspace) {
		this.showspace = showspace;
	}

	public byte getStatus() {
		return this.status;
	}

	public void setStatus(byte status) {
		this.status = status;
	}

}