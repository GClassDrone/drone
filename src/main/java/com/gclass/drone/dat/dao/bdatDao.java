package com.gclass.drone.dat.dao;

import java.util.List;

import com.gclass.drone.dat.dto.bdatDto;

public interface bdatDao {
	
	public List<bdatDto> list(Integer bno) throws Exception;

	public void create(bdatDto dto) throws Exception;

	public void update(bdatDto dto) throws Exception;

	public void delete(Integer bdatno) throws Exception;

	public int count(Integer bdatno) throws Exception;
}
