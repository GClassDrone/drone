package com.gclass.drone.dat.service;

import java.util.List;

import com.gclass.drone.dat.dto.ReplyDto;

public interface ReplyService {

	public void addReply(ReplyDto dto) throws Exception;
	
	public List<ReplyDto> listReply(Integer bno) throws Exception;
	
	public void modifyReply(ReplyDto dto) throws Exception;
	
	public void removeReply(Integer rno) throws Exception;
	
	public int count(Integer bno) throws Exception;
	
}
