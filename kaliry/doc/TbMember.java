package com.kaliry.pojo.impl;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * TbMember entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "tb_member", catalog = "kaliry")
public class TbMember implements java.io.Serializable {

	// Fields

	private Integer id;

	// Constructors

	/** default constructor */
	public TbMember() {
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

}