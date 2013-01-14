package com.kaliry.pojo.impl;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * TbMaster entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "tb_master", catalog = "kaliry")
public class TbMaster implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String password;
	private Short right;

	// Constructors

	/** default constructor */
	public TbMaster() {
	}

	/** full constructor */
	public TbMaster(String name, String password, Short right) {
		this.name = name;
		this.password = password;
		this.right = right;
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

	@Column(name = "password", nullable = false)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "right", nullable = false)
	public Short getRight() {
		return this.right;
	}

	public void setRight(Short right) {
		this.right = right;
	}

}