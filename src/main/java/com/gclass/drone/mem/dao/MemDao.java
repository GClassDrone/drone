package com.gclass.drone.mem.dao;

import java.util.List;

import com.gclass.drone.mem.dto.MemDto;

public interface MemDao {
	
	public MemDto read(Integer mno) throws Exception;
	
	public void update(MemDto dto) throws Exception;
	
	public void delete(Integer mno) throws Exception;
	
	//로그인
	public MemDto login(String siteid, String siteno)throws Exception;
	
	public List<MemDto> listAll()throws Exception;

	public void insert(MemDto dto) throws Exception;
	
	public MemDto dulogin(String niknm)throws Exception;
}
