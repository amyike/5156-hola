package com.nianmi.member.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

/**
 * The persistent class for the ts_xqtable database table.
 * 
 */
@Entity
@Table(name = "ts_xqtable")
public class TsXqtable implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "xq_id")
	private int xqId;

	private String address;

	private String kfshang;

	private String money;

	private String wuye;

	private String wuyetel;

	private String xqname;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "area_id")
	@NotFound(action = NotFoundAction.IGNORE)
	private TsArea area;

	public TsXqtable() {
	}

	public TsXqtable(int id) {
		this.xqId = id;
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
		return xqname;
	}

	public void setXqname(String xqname) {
		this.xqname = xqname;
	}

	public TsArea getArea() {
		return area;
	}

	public void setArea(TsArea area) {
		this.area = area;
	}

}