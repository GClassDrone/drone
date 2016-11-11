package com.gclass.drone.board.dao;

import java.util.List;

import com.gclass.drone.board.dto.InitPage;
import com.gclass.drone.board.dto.ReplyDto;

public interface ReplyDao {
	public int count(Integer num) throws Exception;
	public List<ReplyDto> list(Integer num, InitPage ipg) throws Exception;
	public void insert(ReplyDto reply) throws Exception;
	public void update(ReplyDto reply) throws Exception;
	public void delete(Integer rno) throws Exception;
	public int getNum(Integer rno) throws Exception;
}
