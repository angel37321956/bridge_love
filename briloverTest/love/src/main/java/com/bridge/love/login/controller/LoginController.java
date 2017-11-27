package com.bridge.love.login.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bridge.love.dto.UserDTO;
import com.bridge.love.login.service.LoginService;

@Controller
@RequestMapping(value="/loginSys")
public class LoginController {

	@Autowired
	private LoginService loginservice;
	
	@ResponseBody
	@RequestMapping(value="/login")
	public UserDTO userLogin (@RequestBody UserDTO userInfo) {
		Logger logger = Logger.getLogger(LoginController.class);
		logger.info("asdasd",new Exception("asdasd"));
		UserDTO userLogin = loginservice.userLogin(userInfo);
		return userLogin;
	}
}
