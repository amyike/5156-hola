package com.hola.pojo.impl;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.hola.pojo.BasePojo;

/**
 * 嘉宾会员
 * 
 * @author yike
 */
@Entity
@Table(name = "tb_member_guest")
public class MemberGuest extends BasePojo implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "[name]")
	private String name;// 姓名

	@Column(name = "stage_name")
	private String stageName;// 艺名

	private char sex;// 性别

	private String tel;// 手机

	private int age;// 年龄

	@Column(name = "native_place")
	private String nativePlace;// 籍贯

	private String qq;// QQ

	private String style;// 节目类型

	@Column(name = "price_min")
	private float priceMin;// 最低价格

	@Column(name = "price_max")
	private float priceMax;// 最高价格

	@Column(name = "[range]")
	private String range;// 演出范围

	private String passwd;// 密码

	private String resume;// 简历

	@Column(name = "showed_place")
	private String showedPlace; // 演出过的场所

	@Temporal(TemporalType.TIMESTAMP)
	private Date time;

	public MemberGuest() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getStageName() {
		return stageName;
	}

	public void setStageName(String stageName) {
		this.stageName = stageName;
	}

	public char getSex() {
		return sex;
	}

	public void setSex(char sex) {
		this.sex = sex;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getNativePlace() {
		return nativePlace;
	}

	public void setNativePlace(String nativePlace) {
		this.nativePlace = nativePlace;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
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

	public String getStyle() {
		return style;
	}

	public void setStyle(String style) {
		this.style = style;
	}

	public String getRange() {
		return range;
	}

	public void setRange(String range) {
		this.range = range;
	}

	public String getResume() {
		return resume;
	}

	public void setResume(String resume) {
		this.resume = resume;
	}

	public String getShowedPlace() {
		return showedPlace;
	}

	public void setShowedPlace(String showedPlace) {
		this.showedPlace = showedPlace;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}
}