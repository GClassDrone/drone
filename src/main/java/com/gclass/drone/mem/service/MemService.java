package com.gclass.drone.mem.service;

import com.gclass.drone.login.dto.LoginDto;
import java.util.List;

import com.gclass.drone.mem.dto.MemDto;

public interface MemService {
	
	public void regist(MemDto board) throws Exception;
	public MemDto read(Integer mno) throws Exception;
	public void modify(MemDto board) throws Exception;
	public void remove(Integer mno) throws Exception;
	
	//로그인
	public MemDto login(String siteid, String siteno)throws Exception;
	public List<MemDto> listAll() throws Exception;
}
