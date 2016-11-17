package com.gclass.drone.login.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.gclass.drone.login.dao.LoginDao;
import com.gclass.drone.login.dto.LoginDto;

@Service
public class LoginServiceImpl {
	
	@Inject
	private LoginDao dao;
	
	
}
