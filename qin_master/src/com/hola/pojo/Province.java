package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the province database table.
 * 
 */
@Entity
public class Province extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private String province;

	private int provinceid;

    public Province() {
    }

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProvince() {
		return this.province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public int getProvinceid() {
		return this.provinceid;
	}

	public void setProvinceid(int provinceid) {
		this.provinceid = provinceid;
	}

}