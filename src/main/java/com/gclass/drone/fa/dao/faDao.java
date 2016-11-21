package com.gclass.drone.fa.dao;

import java.util.List;

import com.gclass.drone.fa.dto.faDto;

public interface faDao {
	
	public void update(faDto dto) throws Exception;
	
	public void delete(Integer mno, Integer fno) throws Exception;
	
	public List<faDto> falist(Integer mno) throws Exception;
}
