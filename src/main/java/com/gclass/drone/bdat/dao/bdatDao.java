package com.gclass.drone.bdat.dao;

import java.util.List;

import com.gclass.drone.bdat.dto.bdatDto;

public interface bdatDao {

	public void create(bdatDto dto) throws Exception;

	public void update(bdatDto dto) throws Exception;

	public void delete(Integer subjno, Integer bno, Integer bdatno) throws Exception;

	public List<bdatDto> bdatlist(Integer subjno, Integer bno) throws Exception;

	public int count(Integer subjno, Integer bno) throws Exception;
}
