package com.hola.pojo.impl;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.hola.pojo.BasePojo;

/**
 * 场地会员
 * 
 * @author yike
 */
@Entity
@Table(name = "tb_member_arena")
public class MemberArena extends BasePojo implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String place;// 演艺场所名称

	private String passwd;// 密码

	private String addr;//

	private String schedule;// 档期

	@Column(name = "price_min")
	private float priceMin;// 最低价格

	@Column(name = "price_max")
	private float priceMax;// 最高价格

	private String charge; // 负责人

	private String post;// 职务

	private String tel;//

	private String qq;//

	@Column(name = "[describe]")
	private String describe;// 描述

	private Date time;// 时间

	public MemberArena() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getSchedule() {
		return schedule;
	}

	public void setSchedule(String schedule) {
		this.schedule = schedule;
	}

	public float getPriceMax() {
		return priceMax;
	}

	public void setPriceMax(float priceMax) {
		this.priceMax = priceMax;
	}

	public float getPriceMin() {
		return priceMin;
	}

	public void setPriceMin(float priceMin) {
		this.priceMin = priceMin;
	}

	public String getCharge() {
		return charge;
	}

	public void setCharge(String charge) {
		this.charge = charge;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getDescribe() {
		return describe;
	}

	public void setDescribe(String describe) {
		this.describe = describe;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

}