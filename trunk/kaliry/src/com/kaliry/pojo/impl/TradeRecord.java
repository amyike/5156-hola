package com.kaliry.pojo.impl;

import java.io.Serializable;
import java.math.BigDecimal;
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
 * 交易记录 - 实体类
 * 
 */
@Entity
@Table(name = "tb_trade_record")
public class TradeRecord extends BasePojo implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "item_no")
	private String itemNo;// 物品名

	private String name;// 物品名

	private BigDecimal price;

	private int number;

	private BigDecimal money;

	private int type;// 1购买记录;2退货记录

	@Column(name = "[desc]")
	private String desc;

	@Temporal(TemporalType.TIMESTAMP)
	private Date time;

	@ManyToOne(optional = true, fetch = FetchType.LAZY, targetEntity = Member.class)
	@JoinColumn(name = "member_id")
	private Member member;

	public TradeRecord() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getItemNo() {
		return itemNo;
	}

	public void setItemNo(String itemNo) {
		this.itemNo = itemNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public BigDecimal getMoney() {
		return money;
	}

	public void setMoney(BigDecimal money) {
		this.money = money;
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

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	@Override
	public String toString() {
		// 地区,会员卡号,会员名称,物品编号,物品名,数量,单价,金额,日期,交易类型,备注
		StringBuffer sb = new StringBuffer();
		sb.append("\"").append(this.member.getProvince()).append(" ")
				.append(this.member.getCity()).append(" ")
				.append(this.member.getCompany()).append("\",");
		sb.append("\"").append(this.member.getCardno()).append("\",");
		sb.append("\"").append(this.member.getName()).append("\",");
		sb.append("\"").append(this.getItemNo()).append("\",");
		sb.append("\"").append(this.getName()).append("\",");
		sb.append("\"").append(this.getNumber()).append("\",");
		sb.append("\"").append(this.getPrice()).append("\",");
		sb.append("\"").append(this.getMoney()).append("\",");
		sb.append("\"").append(this.getTime()).append("\",");
		sb.append("\"").append(this.type == 1 ? "购买记录" : "退货记录").append("\",");
		sb.append("\"").append(this.getDesc()).append("\",");
		return sb.toString();
	}
}