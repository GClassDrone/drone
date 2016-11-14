package com.gclass.drone.inform.dao;

import java.util.List;

import com.gclass.drone.inform.dto.Criteria;
import com.gclass.drone.inform.dto.InformDto;
import com.gclass.drone.inform.dto.InitSearchPages;

public interface InformDao {
	
	public void insert(InformDto dto)throws Exception;
	
	public InformDto read(InformDto dto)throws Exception;
	
	public void update(InformDto dto)throws Exception;
	
	public void delete(InformDto dto)throws Exception;
	
	public List<InformDto> listAll(InitSearchPages isp)  throws Exception;
	
	public int totalRow(InitSearchPages isp) throws Exception;
}

