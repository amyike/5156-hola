package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the city database table.
 * 
 */
@Entity
public class City extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private String city;

	private int cityid;

	private int fatherid;

    public City() {
    }

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public int getCityid() {
		return this.cityid;
	}

	public void setCityid(int cityid) {
		this.cityid = cityid;
	}

	public int getFatherid() {
		return this.fatherid;
	}

	public void setFatherid(int fatherid) {
		this.fatherid = fatherid;
	}

}