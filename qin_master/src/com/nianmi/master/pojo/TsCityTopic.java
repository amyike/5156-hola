package com.nianmi.master.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * The persistent class for the ts_city_topic database table.
 * 
 */
@Entity
@Table(name = "ts_city_topic")
public class TsCityTopic implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@ManyToOne(optional = false, fetch = FetchType.LAZY)
	@JoinColumn(name = "uid")
	private TsUser user;

	@Column(name = "city_id")
	private int cityId;

	@ManyToOne(optional = false, fetch = FetchType.LAZY)
	@JoinColumn(name = "cate_id")
	private TsCityCategory cityCategory;

	@OneToMany(mappedBy = "cityTopic", fetch = FetchType.LAZY, cascade = CascadeType.REMOVE)
	@OrderBy("id desc")
	private Set<TsCitytopicReply> citytopicReplies = new HashSet<TsCitytopicReply>();

	private String content;

	private String title;

	@Temporal(TemporalType.TIMESTAMP)
	private Date time;

	private int type;
	private int state;

	public TsCityTopic() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public TsCityCategory getCityCategory() {
		return cityCategory;
	}

	public void setCityCategory(TsCityCategory cityCategory) {
		this.cityCategory = cityCategory;
	}

	public TsUser getUser() {
		return user;
	}

	public void setUser(TsUser user) {
		this.user = user;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public Set<TsCitytopicReply> getCitytopicReplies() {
		return citytopicReplies;
	}

	public void setCitytopicReplies(Set<TsCitytopicReply> citytopicReplies) {
		this.citytopicReplies = citytopicReplies;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public int getCityId() {
		return cityId;
	}

	public void setCityId(int cityId) {
		this.cityId = cityId;
	}
}