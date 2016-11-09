package com.gclass.drone.map.dao;

import java.util.List;

import com.gclass.drone.map.dto.CtsDto;
import com.gclass.drone.map.dto.LocDto;

public interface MapDao {
	public List<LocDto> addrlist();
	public void addrupdate(LocDto lDto);
	
	public List<CtsDto> ctsSelectAll();
}
