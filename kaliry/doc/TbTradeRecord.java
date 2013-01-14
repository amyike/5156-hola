package com.kaliry.pojo.impl;

import static javax.persistence.GenerationType.IDENTITY;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * TbTradeRecord entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "tb_trade_record", catalog = "kaliry")
public class TbTradeRecord implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private Double price;
	private Integer number;
	private Double money;
	private Timestamp time;

	// Constructors

	/** default constructor */
	public TbTradeRecord() {
	}

	/** full constructor */
	public TbTradeRecord(String name, Double price, Integer number,
			Double money, Timestamp time) {
		this.name = name;
		this.price = price;
		this.number = number;
		this.money = money;
		this.time = time;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "name", nullable = false)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "price", nullable = false, precision = 9)
	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	@Column(name = "number", nullable = false)
	public Integer getNumber() {
		return this.number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	@Column(name = "money", nullable = false, precision = 9)
	public Double getMoney() {
		return this.money;
	}

	public void setMoney(Double money) {
		this.money = money;
	}

	@Column(name = "time", nullable = false, length = 19)
	public Timestamp getTime() {
		return this.time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

}