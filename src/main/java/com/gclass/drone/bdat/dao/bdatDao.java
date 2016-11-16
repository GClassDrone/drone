package com.gclass.drone.bdat.dao;

import java.util.List;

import com.gclass.drone.bdat.dto.bdatDto;
import com.gclass.drone.common.InitPage;


public interface bdatDao {
	
	public List<bdatDto> bdatlist(Integer subjno, Integer bno) throws Exception;

	public void create(Integer subjno, Integer bno) throws Exception;

	public void update(Integer subjno, Integer bno, Integer bdatno) throws Exception;

	public void delete(Integer subjno, Integer bno, Integer bdatno) throws Exception;

	public int count(Integer subjno, Integer bno) throws Exception;

}
