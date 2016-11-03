package com.gclass.drone.dat.service;

import java.util.List;

import com.kedu.board.dto.Criteria;
import com.kedu.board.dto.ReplyDto;

public interface ReplyService {

	public void addReply(ReplyDto dto) throws Exception;
	
	public List<ReplyDto> listReply(Integer bno) throws Exception;
	
	public void modifyReply(ReplyDto dto) throws Exception;
	
	public void removeReply(Integer rno) throws Exception;
	
	public List<ReplyDto> listReplyPage(Integer bno, Criteria cri) throws Exception;
	
	public int count(Integer bno) throws Exception;
	
}
