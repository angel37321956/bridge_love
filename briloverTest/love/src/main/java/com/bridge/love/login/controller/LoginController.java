package com.bridge.love.login.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bridge.love.dto.UserDTO;
import com.bridge.love.login.service.LoginService;

@Controller
@RequestMapping(value="/loginSys")
public class LoginController {

	
	@RequestMapping(value="/login")
	public String userLogin (UserDTO userInfo) {
		
		return "login";
	}
}
