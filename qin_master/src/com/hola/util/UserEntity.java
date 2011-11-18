package com.hola.util;

import java.io.Serializable;

/**
 * @author: dxl
 * @createDate:
 * @function: 用户相关信息，用于保存在Session之中
 */
public class UserEntity implements Serializable {

	private long id;
	private String name;
	private int organId;
	private String organName;
	private String loginTime;
	private String lastActionTime;

	/**
	 * @return the id
	 */
	public long getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(long id) {
		this.id = id;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the organ
	 */
	public int getOrganId() {
		return organId;
	}

	/**
	 * @param organ
	 *            the organ to set
	 */
	public void setOrganId(int organId) {
		this.organId = organId;
	}

	/**
	 * @return the organName
	 */
	public String getOrganName() {
		return organName;
	}

	/**
	 * @param organName
	 *            the organName to set
	 */
	public void setOrganName(String organName) {
		this.organName = organName;
	}

	/**
	 * @return the loginTime
	 */
	public String getLoginTime() {
		return loginTime;
	}

	/**
	 * @param loginTime
	 *            the loginTime to set
	 */
	public void setLoginTime(String loginTime) {
		this.loginTime = loginTime;
	}

	/**
	 * @return the lastActionTime
	 */
	public String getLastActionTime() {
		return lastActionTime;
	}

	/**
	 * @param lastActionTime
	 *            the lastActionTime to set
	 */
	public void setLastActionTime(String lastActionTime) {
		this.lastActionTime = lastActionTime;
	}
}
