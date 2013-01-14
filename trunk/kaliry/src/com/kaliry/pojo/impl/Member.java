package com.kaliry.pojo.impl;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.kaliry.pojo.BasePojo;

/**
 * 会员信息 - 实体类
 * 
 */
@Entity
@Table(name = "tb_member")
public class Member extends BasePojo implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;// 标识ID

	private String number;// 编号

	private String name;// 姓名

	private String idcard;// 身份证

	private String province;// 省份

	private String city;// 城市

	private String company;// 分公司

	@Column(name = "open_way")
	private int openWay;// 会员卡开通方式

	private String tel;// 联系电话

	@Column(name = "pickup_way")
	private int pickupWay;// 取货方式

	@Column(name = "send_addr")
	private String sendAddr;// 送货地址

	@Column(name = "purchase_intention")
	private String purchaseIntention;// 意向认购

	@Column(name = "customer_signature")
	private String customerSignature;// 客户签名

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "apply_time")
	private Date applyTime;// 申请日期

	@Column(name = "servicer_id")
	private long servicerId;// 服务专员编号

	@Column(name = "servicer_name")
	private String servicerName;// 服务专员名字

	@Column(name = "is_accept")
	private boolean isAccept;// 是否受理

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "entry_time")
	private Date entryTime;// 录入日期

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "activate_time")
	private Date activateTime;// 激活生效时间

	private String assignees;// 受理人

	private Long cardno;// 会员卡号

	private String signer;// 签收人

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "sign_time")
	private Date signTime = new Date();// 签收日期

	private int state;// 状态:1激活;2弃用

	private int credits;// 积分

	//
	@OneToMany(mappedBy = "member", fetch = FetchType.LAZY, cascade = CascadeType.REMOVE)
	@OrderBy("id desc")
	private Set<TradeRecord> tradeRecords;// 购买记录

	//
	@OneToMany(mappedBy = "member", fetch = FetchType.LAZY, cascade = CascadeType.REMOVE)
	@OrderBy("id desc")
	private Set<RedeemRecord> redeemRecords;// 兑换记录

	public Member() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIdcard() {
		return idcard;
	}

	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public int getOpenWay() {
		return openWay;
	}

	public void setOpenWay(int openWay) {
		this.openWay = openWay;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public int getPickupWay() {
		return pickupWay;
	}

	public void setPickupWay(int pickupWay) {
		this.pickupWay = pickupWay;
	}

	public String getPurchaseIntention() {
		return purchaseIntention;
	}

	public void setPurchaseIntention(String purchaseIntention) {
		this.purchaseIntention = purchaseIntention;
	}

	public String getCustomerSignature() {
		return customerSignature;
	}

	public void setCustomerSignature(String customerSignature) {
		this.customerSignature = customerSignature;
	}

	public Date getApplyTime() {
		return applyTime;
	}

	public void setApplyTime(Date applyTime) {
		this.applyTime = applyTime;
	}

	public long getServicerId() {
		return servicerId;
	}

	public void setServicerId(long servicerId) {
		this.servicerId = servicerId;
	}

	public String getServicerName() {
		return servicerName;
	}

	public void setServicerName(String servicerName) {
		this.servicerName = servicerName;
	}

	public boolean getIsAccept() {
		return isAccept;
	}

	public void setIsAccept(boolean isAccept) {
		this.isAccept = isAccept;
	}

	public Date getEntryTime() {
		return entryTime;
	}

	public void setEntryTime(Date entryTime) {
		this.entryTime = entryTime;
	}

	public Date getActivateTime() {
		return activateTime;
	}

	public void setActivateTime(Date activateTime) {
		this.activateTime = activateTime;
	}

	public String getAssignees() {
		return assignees;
	}

	public void setAssignees(String assignees) {
		this.assignees = assignees;
	}

	public Long getCardno() {
		return cardno;
	}

	public void setCardno(Long cardno) {
		this.cardno = cardno;
	}

	public String getSendAddr() {
		return sendAddr;
	}

	public void setSendAddr(String sendAddr) {
		this.sendAddr = sendAddr;
	}

	public String getSigner() {
		return signer;
	}

	public void setSigner(String signer) {
		this.signer = signer;
	}

	public Date getSignTime() {
		return signTime;
	}

	public void setSignTime(Date signTime) {
		this.signTime = signTime;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public int getCredits() {
		return credits;
	}

	public void setCredits(int credits) {
		this.credits = credits;
	}

	public Set<RedeemRecord> getRedeemRecords() {
		return redeemRecords;
	}

	public void setRedeemRecords(Set<RedeemRecord> redeemRecords) {
		this.redeemRecords = redeemRecords;
	}

	public Set<TradeRecord> getTradeRecords() {
		return tradeRecords;
	}

	public void setTradeRecords(Set<TradeRecord> tradeRecords) {
		this.tradeRecords = tradeRecords;
	}

	@Override
	public String toString() {
		StringBuffer sb = new StringBuffer();
		sb.append("\"").append(this.number).append("\",");
		sb.append("\"").append(this.cardno).append("\",");
		sb.append(this.name).append(",");
		sb.append("\"").append(this.tel).append("\",");
		sb.append(this.province).append(this.city).append(this.company)
				.append(",");
		sb.append(this.sendAddr).append(",");
		sb.append("'").append(this.idcard).append("',");
		sb.append("\"").append(this.servicerId).append("\",");
		sb.append(this.servicerName).append(",");
		sb.append(this.assignees).append(",");
		sb.append(this.entryTime).append(",");
		sb.append(this.activateTime).append(",");
		sb.append(this.state).append(",");
		sb.append(this.credits);
		return sb.toString();
	}
}