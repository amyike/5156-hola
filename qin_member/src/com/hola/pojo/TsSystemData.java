package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;


/**
 * The persistent class for the ts_system_data database table.
 * 
 */
@Entity
@Table(name="ts_system_data")
public class TsSystemData extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private String key;

	private String list;

	private Timestamp mtime;

	private int uid;

    @Lob()
	private String value;

    public TsSystemData() {
    }

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getKey() {
		return this.key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getList() {
		return this.list;
	}

	public void setList(String list) {
		this.list = list;
	}

	public Timestamp getMtime() {
		return this.mtime;
	}

	public void setMtime(Timestamp mtime) {
		this.mtime = mtime;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getValue() {
		return this.value;
	}

	public void setValue(String value) {
		this.value = value;
	}

}