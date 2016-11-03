package com.gclass.drone.dat.dao;

import java.util.List;

import com.kedu.board.dto.Criteria;
import com.kedu.board.dto.ReplyDto;

public interface ReplyDao {
	
	public List<ReplyDto> list(Integer bno) throws Exception;
	
	public void create(ReplyDto dto)throws Exception;
	
	public void update(ReplyDto dto) throws Exception;
	
	public void delete(Integer rno) throws Exception;
	
	public List<ReplyDto> listPage (Integer bno ,Criteria cri) throws Exception;
	
	public int count(Integer bno) throws Exception;
	
	public int getBno(Integer rno)throws Exception;
}
