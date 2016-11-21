package com.gclass.drone.drone.service;

import java.util.List;

import com.gclass.drone.drone.dto.droneDto;

public interface droneservice {
	
	public void droneinsert(droneDto dto) throws Exception;
	
	public List<droneDto> dronelist(Integer mno) throws Exception;
	
	public void modify(droneDto dto) throws Exception;
	
	public void romove(Integer mdrno) throws Exception;
}
