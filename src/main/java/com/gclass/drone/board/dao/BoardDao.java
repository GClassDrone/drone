package com.gclass.drone.board.dao;

import com.gclass.drone.board.dto.BoardDto;

public interface BoardDao {
	
	public void create(BoardDto Dto) throws Exception;
	
	public BoardDto read(Integer mno) throws Exception;
	
	public void update(BoardDto dto) throws Exception;
	
	public void delete(Integer mno) throws Exception;
}
