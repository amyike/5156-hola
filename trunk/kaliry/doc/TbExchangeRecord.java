package com.kaliry.pojo.impl;

import static javax.persistence.GenerationType.IDENTITY;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * TbExchangeRecord entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "tb_exchange_record", catalog = "kaliry")
public class TbExchangeRecord implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private Integer number;
	private Timestamp time;

	// Constructors

	/** default constructor */
	public TbExchangeRecord() {
	}

	/** full constructor */
	public TbExchangeRecord(String name, Integer number, Timestamp time) {
		this.name = name;
		this.number = number;
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

	@Column(name = "number", nullable = false)
	public Integer getNumber() {
		return this.number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	@Column(name = "time", nullable = false, length = 19)
	public Timestamp getTime() {
		return this.time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

}