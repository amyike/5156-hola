package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_credit_type database table.
 * 
 */
@Entity
@Table(name="ts_credit_type")
public class TsCreditType extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private String alias;

	private String name;

    public TsCreditType() {
    }

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAlias() {
		return this.alias;
	}

	public void setAlias(String alias) {
		this.alias = alias;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

}