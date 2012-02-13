package com.nianmi.master.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * The persistent class for the ts_area database table.
 * 
 */
@Entity
@Table(name = "ts_area")
public class TsArea implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "area_id")
	private int areaId;

	@ManyToOne(optional = false, fetch = FetchType.LAZY)
	@JoinColumn(name = "pid")
	private TsArea pArea;

	private String title;

	public TsArea() {
	}

	public int getAreaId() {
		return this.areaId;
	}

	public void setAreaId(int areaId) {
		this.areaId = areaId;
	}

	public TsArea getpArea() {
		return pArea;
	}

	public void setpArea(TsArea pArea) {
		this.pArea = pArea;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

}