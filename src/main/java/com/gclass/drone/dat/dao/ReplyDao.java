package com.gclass.drone.dat.dao;

import java.util.List;

import com.gclass.drone.dat.dto.ReplyDto;

public interface ReplyDao {
	
	public List<ReplyDto> list(Integer bno) throws Exception;
	
	public void create(ReplyDto dto)throws Exception;
	
	public void update(ReplyDto dto) throws Exception;
	
	public void delete(Integer rno) throws Exception;
	
	public int count(Integer bno) throws Exception;
	
	public int getBno(Integer rno)throws Exception;
}
