package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_template_record database table.
 * 
 */
@Entity
@Table(name="ts_template_record")
public class TsTemplateRecord extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="tpl_record_id")
	private int tplRecordId;

	private int ctime;

    @Lob()
	private String data;

	@Column(name="tpl_alias")
	private String tplAlias;

	@Column(name="tpl_name")
	private String tplName;

	private String type;

	private String type2;

	private int uid;

    public TsTemplateRecord() {
    }

	public int getTplRecordId() {
		return this.tplRecordId;
	}

	public void setTplRecordId(int tplRecordId) {
		this.tplRecordId = tplRecordId;
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

	public String getTplAlias() {
		return this.tplAlias;
	}

	public void setTplAlias(String tplAlias) {
		this.tplAlias = tplAlias;
	}

	public String getTplName() {
		return this.tplName;
	}

	public void setTplName(String tplName) {
		this.tplName = tplName;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getType2() {
		return this.type2;
	}

	public void setType2(String type2) {
		this.type2 = type2;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

}