package com.kaliry.pojo.impl;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.kaliry.pojo.BasePojo;

/**
 * 管理员信息 - 实体类
 * 
 */
@Entity
@Table(name = "tb_master")
public class Master extends BasePojo implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String account;

	private String password;

	private int authority = 3;// 权限:1-系统管理员;2-高级管理员;3-普通管理员;

	// private Timestamp time;
	@Temporal(TemporalType.TIMESTAMP)
	private Date time = new Date();// 添加时间

	private String province;// 省

	private String city;// 市

	private String company;// 分公司

	public Master() {
	}

	public Master(int id, int authority) {
		this.id = id;
		this.authority = authority;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getAuthority() {
		return authority;
	}

	public void setAuthority(int authority) {
		this.authority = authority;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}
}