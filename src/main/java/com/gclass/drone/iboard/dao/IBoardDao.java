package com.gclass.drone.iboard.dao;

import com.gclass.drone.iboard.dto.IBoardDto;

public interface IBoardDao {
	
	public void create(IBoardDto Dto) throws Exception;
	
	public IBoardDto read(Integer mno) throws Exception;
	
	public void update(IBoardDto dto) throws Exception;
	
	public void delete(Integer mno) throws Exception;
}
