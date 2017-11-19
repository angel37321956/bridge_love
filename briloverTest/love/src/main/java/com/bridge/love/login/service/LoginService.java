package com.bridge.love.login.service;

import java.util.Map;

import com.bridge.love.dto.UserDTO;

public interface LoginService {

	public Map<String, Object> userLogin (UserDTO userInfo);
}
