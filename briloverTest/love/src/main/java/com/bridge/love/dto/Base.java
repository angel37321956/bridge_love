package com.bridge.love.dto;

import java.io.Serializable;

public class Base implements Serializable{

	/**
	 * 序列化
	 */
	private static final long serialVersionUID = 3484428120160240658L;
	/**
	 * 用户账号
	 */
	private String userAccount;
	/**
	 * 用户名称
	 */
	private String userName;
	/**
	 *用户密码
	 */
	private String userPassword;
	
	public String getUserAccount() {
		return userAccount;
	}
	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
}
