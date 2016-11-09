package com.gclass.drone.login.dao;

import com.gclass.drone.login.dto.LoginDto;
import com.gclass.drone.mem.dto.MemDto;

public interface LoginDao {
	
	public void Insert(LoginDto dto) throws Exception;
	
	public MemDto login(LoginDto dto)throws Exception;
}