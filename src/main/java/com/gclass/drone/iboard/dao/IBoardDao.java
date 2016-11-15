package com.gclass.drone.iboard.dao;

import java.util.List;

import com.gclass.drone.common.InitSearchPage;
import com.gclass.drone.iboard.dto.IBoardDto;

public interface IBoardDao {
	
	public void create(IBoardDto Dto) throws Exception;
	
	public IBoardDto read(Integer bno, Integer subjno) throws Exception;
	
	public void update(IBoardDto dto) throws Exception;
	
	public void delete(Integer bno, Integer subjno) throws Exception;
	
	public List<IBoardDto> listAll(Integer subjno, InitSearchPage isp) throws Exception;
	
	public int totalRow(Integer subjno, InitSearchPage isp) throws Exception;
}
