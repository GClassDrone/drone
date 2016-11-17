package com.gclass.drone.login.service;

import com.gclass.drone.login.dto.LoginDto;

public interface LoginService {

	public LoginDto login(LoginDto dto)throws Exception;
}
