package com.gclass.drone.map.dao;

import java.util.List;

import com.gclass.drone.map.dto.CtsDto;
import com.gclass.drone.map.dto.LocDto;
import com.gclass.drone.map.dto.MemViewDto;

public interface MapDao {
	public List<LocDto> addrlist();
	public void addrupdate(LocDto lDto);
	
	public List<CtsDto> ctsSelectAll();
	public CtsDto ctsSelectOne(CtsDto cDto);
	public void ctsUpdateReadcnt(CtsDto cDto);
	
	public List<MemViewDto> memSelectAll();
}
