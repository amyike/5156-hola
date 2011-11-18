package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_space database table.
 * 
 */
@Entity
@Table(name="ts_space")
public class TsSpace extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int uid;

	@Column(name="credit_exp")
	private int creditExp;

	@Column(name="credit_score")
	private int creditScore;

	private int hit;

    @Lob()
	private String setting;

    public TsSpace() {
    }

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public int getCreditExp() {
		return this.creditExp;
	}

	public void setCreditExp(int creditExp) {
		this.creditExp = creditExp;
	}

	public int getCreditScore() {
		return this.creditScore;
	}

	public void setCreditScore(int creditScore) {
		this.creditScore = creditScore;
	}

	public int getHit() {
		return this.hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public String getSetting() {
		return this.setting;
	}

	public void setSetting(String setting) {
		this.setting = setting;
	}

}