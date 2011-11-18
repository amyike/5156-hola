package com.hola.pojo;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ts_jobs database table.
 * 
 */
@Entity
@Table(name="ts_jobs")
public class TsJob extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="job_id")
	private int jobId;

	private String age;

	private int areaid;

    @Lob()
	private String content;

	private int ctime;

	private String gangwei;

	private int gonglin;

	private String hangye;

	private int hots;

	private String sex;

	private String title;

	private int typeid;

	private int uid;

	private String wenhua;

    public TsJob() {
    }

	public int getJobId() {
		return this.jobId;
	}

	public void setJobId(int jobId) {
		this.jobId = jobId;
	}

	public String getAge() {
		return this.age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public int getAreaid() {
		return this.areaid;
	}

	public void setAreaid(int areaid) {
		this.areaid = areaid;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getCtime() {
		return this.ctime;
	}

	public void setCtime(int ctime) {
		this.ctime = ctime;
	}

	public String getGangwei() {
		return this.gangwei;
	}

	public void setGangwei(String gangwei) {
		this.gangwei = gangwei;
	}

	public int getGonglin() {
		return this.gonglin;
	}

	public void setGonglin(int gonglin) {
		this.gonglin = gonglin;
	}

	public String getHangye() {
		return this.hangye;
	}

	public void setHangye(String hangye) {
		this.hangye = hangye;
	}

	public int getHots() {
		return this.hots;
	}

	public void setHots(int hots) {
		this.hots = hots;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getTypeid() {
		return this.typeid;
	}

	public void setTypeid(int typeid) {
		this.typeid = typeid;
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getWenhua() {
		return this.wenhua;
	}

	public void setWenhua(String wenhua) {
		this.wenhua = wenhua;
	}

}