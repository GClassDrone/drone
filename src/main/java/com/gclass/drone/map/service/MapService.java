package com.gclass.drone.map.service;

import java.util.List;

import com.gclass.drone.map.dto.CtsDto;
import com.gclass.drone.map.dto.LocDto;

public interface MapService {
	public List<LocDto> addrlist();
	public void addrupdate(LocDto lDto);
	
	public List<CtsDto> ctsSelectAll();
}
