package com.bridge.love.dto;

import java.io.Serializable;

public class UserDTO extends Base implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 2734069028241174706L;
	/**
	 * 用户联系方式
	 */
	private String userPhone;

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
}
