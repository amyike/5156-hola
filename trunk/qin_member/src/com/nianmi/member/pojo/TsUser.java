package com.nianmi.member.pojo;

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

import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

/**
 * The persistent class for the ts_user database table.
 * 
 */
@Entity
@Table(name = "ts_user")
public class TsUser implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int uid;

	@Column(name = "admin_level")
	private String adminLevel;

	@Column(name = "api_key")
	private String apiKey;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "area")
	@NotFound(action = NotFoundAction.IGNORE)
	private TsArea area;

	private String bktx;

	private String bktz;

	private String brint;

	private int city;

	private byte commend;

	private int ctime;

	private String domain;

	private String email;

	private byte identity;

	@Column(name = "is_active")
	private byte isActive;

	@Column(name = "is_init")
	private byte isInit;

	@Column(name = "is_synchronizing")
	private byte isSynchronizing;

	private byte isdatu;

	private String location;

	@Column(name = "myop_menu_num")
	private int myopMenuNum;

	private String password;

	private int province;

	private int score;

	private byte sex;

	private String tel;

	private String truename;

	private String uname;

	private String zhiye;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "xqid")
	@NotFound(action = NotFoundAction.IGNORE)
	private TsXqtable xqtable;

	public TsUser() {
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getAdminLevel() {
		return this.adminLevel;
	}

	public void setAdminLevel(String adminLevel) {
		this.adminLevel = adminLevel;
	}

	public String getApiKey() {
		return this.apiKey;
	}

	public void setApiKey(String apiKey) {
		this.apiKey = apiKey;
	}

	public TsArea getArea() {
		return this.area;
	}

	public void setArea(TsArea area) {
		this.area = area;
	}

	public String getBktx() {
		return this.bktx;
	}

	public void setBktx(String bktx) {
		this.bktx = bktx;
	}

	public String getBktz() {
		return this.bktz;
	}

	public void setBktz(String bktz) {
		this.bktz = bktz;
	}

	public String getBrint() {
		return this.brint;
	}

	public void setBrint(String brint) {
		this.brint = brint;
	}

	public int getCity() {
		return this.city;
	}

	public void setCity(int city) {
		this.city = city;
	}

	public byte getCommend() {
		return this.commend;
	}

	public void setCommend(byte commend) {
		this.commend = commend;
	}

	public int getCtime() {
		return this.ctime;
	}

	public void setCtime(int ctime) {
		this.ctime = ctime;
	}

	public String getDomain() {
		return this.domain;
	}

	public void setDomain(String domain) {
		this.domain = domain;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public byte getIdentity() {
		return this.identity;
	}

	public void setIdentity(byte identity) {
		this.identity = identity;
	}

	public byte getIsActive() {
		return this.isActive;
	}

	public void setIsActive(byte isActive) {
		this.isActive = isActive;
	}

	public byte getIsInit() {
		return this.isInit;
	}

	public void setIsInit(byte isInit) {
		this.isInit = isInit;
	}

	public byte getIsSynchronizing() {
		return this.isSynchronizing;
	}

	public void setIsSynchronizing(byte isSynchronizing) {
		this.isSynchronizing = isSynchronizing;
	}

	public byte getIsdatu() {
		return this.isdatu;
	}

	public void setIsdatu(byte isdatu) {
		this.isdatu = isdatu;
	}

	public String getLocation() {
		return this.location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public int getMyopMenuNum() {
		return this.myopMenuNum;
	}

	public void setMyopMenuNum(int myopMenuNum) {
		this.myopMenuNum = myopMenuNum;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getProvince() {
		return this.province;
	}

	public void setProvince(int province) {
		this.province = province;
	}

	public int getScore() {
		return this.score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public byte getSex() {
		return this.sex;
	}

	public void setSex(byte sex) {
		this.sex = sex;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getTruename() {
		return this.truename;
	}

	public void setTruename(String truename) {
		this.truename = truename;
	}

	public String getUname() {
		return this.uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getZhiye() {
		return this.zhiye;
	}

	public void setZhiye(String zhiye) {
		this.zhiye = zhiye;
	}

	public TsXqtable getXqtable() {
		return xqtable;
	}

	public void setXqtable(TsXqtable xqtable) {
		this.xqtable = xqtable;
	}
}