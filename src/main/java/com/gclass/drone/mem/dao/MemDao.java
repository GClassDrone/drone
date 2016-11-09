package com.gclass.drone.mem.dao;

import java.util.List;

import com.gclass.drone.mem.dto.MemDto;

public interface MemDao {
	
	public void create(MemDto Dto) throws Exception;
	
	public MemDto read(Integer mno) throws Exception;
	
	public void update(MemDto dto) throws Exception;
	
	public void delete(Integer mno) throws Exception;
	
	public List<MemDto> listAll()throws Exception;
}
