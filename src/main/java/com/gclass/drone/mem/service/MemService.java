package com.gclass.drone.mem.service;

import java.util.List;

import com.gclass.drone.mem.dto.MemDto;

public interface MemService {
	
	public MemDto read(Integer mno) throws Exception;
	public void modify(MemDto board) throws Exception;
	public void remove(Integer mno) throws Exception;
	public List<MemDto> listAll() throws Exception;
	
	//로그인
	public MemDto login(String siteid, String siteno)throws Exception;
	public void regist(MemDto dto)throws Exception;
	public int dulogin(String niknm)throws Exception;
}
