package com.gclass.drone.mem.service;

import java.util.List;

import com.gclass.drone.mem.dto.MemDto;

public interface MemService {
	
	public void regist(MemDto board) throws Exception;
	public MemDto read(Integer mno) throws Exception;
	public void modify(MemDto board) throws Exception;
	public void remove(Integer mno) throws Exception;
	public List<MemDto> listAll() throws Exception;
}
