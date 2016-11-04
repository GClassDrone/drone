package com.gclass.drone.bdat.service;

import java.util.List;

import com.gclass.drone.bdat.dto.bdatDto;


public interface bdatService {

	public void addbdat(bdatDto dto) throws Exception;
	
	public List<bdatDto> listbdat(Integer bno) throws Exception;
	
	public void modifybdat(bdatDto dto) throws Exception;
	
	public void removebdat(Integer rno) throws Exception;
	
	public int count(Integer bno) throws Exception;
	
}
