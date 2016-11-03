package com.gclass.drone.dat.service;

import java.util.List;

import com.gclass.drone.dat.dto.bdatDto;

public interface bdatService {

	public void addReply(bdatDto dto) throws Exception;
	
	public List<bdatDto> listReply(Integer bno) throws Exception;
	
	public void modifyReply(bdatDto dto) throws Exception;
	
	public void removeReply(Integer rno) throws Exception;
	
	public int count(Integer bno) throws Exception;
	
}
