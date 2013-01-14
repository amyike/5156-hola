package com.kaliry.pojo.impl;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.kaliry.pojo.BasePojo;

/**
 * 积分兑换记录 - 实体类
 * 
 */
@Entity
@Table(name = "tb_redeem_record")
public class RedeemRecord extends BasePojo implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String name; // 物品名

	private int number;

	@Column(name = "[desc]")
	private String desc;

	// private Timestamp time;
	@Temporal(TemporalType.TIMESTAMP)
	private Date time;

	@ManyToOne(optional = false, fetch = FetchType.LAZY, targetEntity = Member.class)
	@JoinColumn(name = "member_id")
	private Member member;

	public RedeemRecord() {
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

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	@Override
	public String toString() {
		// "物品名,数量,日期,备注
		StringBuffer sb = new StringBuffer();
		sb.append("\"").append(this.member.getCardno()).append("\",");
		sb.append("\"").append(this.member.getName()).append("\",");
		sb.append("\"").append(this.getName()).append("\",");
		sb.append("\"").append(this.getNumber()).append("\",");
		sb.append("\"").append(this.getTime()).append("\",");
		sb.append("\"").append(this.getDesc()).append("\",");
		return sb.toString();
	}
}