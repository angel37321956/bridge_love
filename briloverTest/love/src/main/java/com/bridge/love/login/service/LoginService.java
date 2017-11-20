package com.bridge.love.login.service;

import java.util.Map;

import org.springframework.stereotype.Service;

import com.bridge.love.dto.UserDTO;

public interface LoginService {

	public UserDTO userLogin (UserDTO userInfo);
}
