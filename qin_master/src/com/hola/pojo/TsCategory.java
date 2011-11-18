package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_category database table.
 * 
 */
@Entity
@Table(name="ts_category")
public class TsCategory extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private int cleft;

	private int corder;

	private int cright;

	private String name;

	private String namespace;

	private int tid;

    public TsCategory() {
    }

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCleft() {
		return this.cleft;
	}

	public void setCleft(int cleft) {
		this.cleft = cleft;
	}

	public int getCorder() {
		return this.corder;
	}

	public void setCorder(int corder) {
		this.corder = corder;
	}

	public int getCright() {
		return this.cright;
	}

	public void setCright(int cright) {
		this.cright = cright;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNamespace() {
		return this.namespace;
	}

	public void setNamespace(String namespace) {
		this.namespace = namespace;
	}

	public int getTid() {
		return this.tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}

}