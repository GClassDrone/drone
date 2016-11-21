package com.gclass.drone.drone.dao;

import java.util.List;

import com.gclass.drone.drone.dto.droneDto;

public interface droneDao {
	
	public void droneinsert(droneDto dto) throws Exception;
	
	public List<droneDto> dronelist(Integer mno) throws Exception; 
	
	public void update(droneDto dto) throws Exception;
	
	public void delete(Integer mdrno) throws Exception;
}
