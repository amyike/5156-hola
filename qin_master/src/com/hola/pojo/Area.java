package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the area database table.
 * 
 */
@Entity
public class Area extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private String area;

	private int areaid;

	private int fatherid;

    public Area() {
    }

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getArea() {
		return this.area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public int getAreaid() {
		return this.areaid;
	}

	public void setAreaid(int areaid) {
		this.areaid = areaid;
	}

	public int getFatherid() {
		return this.fatherid;
	}

	public void setFatherid(int fatherid) {
		this.fatherid = fatherid;
	}

}