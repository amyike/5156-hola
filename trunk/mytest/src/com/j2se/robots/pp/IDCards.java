package com.j2se.robots.pp;

import java.util.Date;

/**
 * 
 * @author Administrator
 * 
 */
public class IDCards {

	private long id;// ID
	private String name;// 名字
	private char sex;// 性别
	private String nation;// 民族
	private Date birth;// 出生年月
	private String address;// 地址

	public IDCards() {
	}

	public IDCards(long id, String name, char sex, String nation, Date birth,
			String address) {
		super();
		this.id = id;
		this.name = name;
		this.sex = sex;
		this.nation = nation;
		this.birth = birth;
		this.address = address;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public char getSex() {
		return sex;
	}

	public void setSex(char sex) {
		this.sex = sex;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}
