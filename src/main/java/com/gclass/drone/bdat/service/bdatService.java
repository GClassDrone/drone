package com.gclass.drone.bdat.service;

import java.util.List;

import com.gclass.drone.bdat.dto.bdatDto;
import com.gclass.drone.common.InitPage;


public interface bdatService {

	public void addbdat(Integer subjno, Integer bno) throws Exception;
	
	public List<bdatDto> bdatlist(Integer subjno, Integer bno) throws Exception;
	
	public void modifybdat(Integer subjno, Integer bno, Integer bdatno) throws Exception;
	
	public void removebdat(Integer subjno, Integer bno, Integer bdatnoo) throws Exception;
	
	public int count(Integer subjno, Integer bno) throws Exception;
	
}
