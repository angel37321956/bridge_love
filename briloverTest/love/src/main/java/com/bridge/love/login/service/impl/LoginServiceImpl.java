package com.bridge.love.login.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bridge.love.dto.UserDTO;
import com.bridge.love.login.dao.LoginDao;
import com.bridge.love.login.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService{

	@Autowired
	private LoginDao loginDao;
	
	public UserDTO userLogin (UserDTO userInfo) {
		userInfo.setUserAccount("qweqwe");
		UserDTO user = loginDao.login(userInfo);
		return user;
	}
}
