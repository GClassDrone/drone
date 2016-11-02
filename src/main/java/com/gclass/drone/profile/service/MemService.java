package com.gclass.drone.profile.service;

import java.util.List;

import com.gclass.drone.profile.dto.MemDto;

public interface MemService {
	
	public void regist(MemDto board) throws Exception;
	public MemDto read(Integer mno) throws Exception;
	public void modify(MemDto board) throws Exception;
	public void remove(Integer mno) throws Exception;
}
