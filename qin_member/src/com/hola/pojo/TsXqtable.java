package com.hola.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ts_xqtable")
public class TsXqtable extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "xq_id")
	private int xqId;

	private String address;

	@Column(name = "area_id")
	private int areaId;

	private String kfshang;

	private String money;

	private String wuye;

	private String wuyetel;

	private String xqname;

	public TsXqtable() {
	}

	public int getXqId() {
		return this.xqId;
	}

	public void setXqId(int xqId) {
		this.xqId = xqId;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getAreaId() {
		return this.areaId;
	}

	public void setAreaId(int areaId) {
		this.areaId = areaId;
	}

	public String getKfshang() {
		return this.kfshang;
	}

	public void setKfshang(String kfshang) {
		this.kfshang = kfshang;
	}

	public String getMoney() {
		return this.money;
	}

	public void setMoney(String money) {
		this.money = money;
	}

	public String getWuye() {
		return this.wuye;
	}

	public void setWuye(String wuye) {
		this.wuye = wuye;
	}

	public String getWuyetel() {
		return this.wuyetel;
	}

	public void setWuyetel(String wuyetel) {
		this.wuyetel = wuyetel;
	}

	public String getXqname() {
		return this.xqname;
	}

	public void setXqname(String xqname) {
		this.xqname = xqname;
	}

}