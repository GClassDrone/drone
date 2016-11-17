package com.gclass.drone.map.dao;

import java.util.List;
import java.util.Map;

import com.gclass.drone.map.dto.CtsDto;
import com.gclass.drone.map.dto.CtscateDto;
import com.gclass.drone.map.dto.CtstagDto;
import com.gclass.drone.map.dto.LocDto;
import com.gclass.drone.map.dto.MemViewDto;

public interface MapDao {
	public List<LocDto> addrlist() throws Exception;
	public void addrupdate(LocDto lDto) throws Exception;
	
	public List<CtsDto> ctsSelectAll() throws Exception;
	public CtsDto ctsSelectOne(CtsDto cDto) throws Exception;
	public void ctsUpdateReadcnt(CtsDto cDto) throws Exception;
	
	public List<MemViewDto> memSelectAll() throws Exception;
	
	public List<CtsDto> hotclipVideo() throws Exception;
	public List<MemViewDto> hotclipPilot() throws Exception;
	
	public void ctsInsert(CtsDto cDto) throws Exception;
	public int newCtsNo() throws Exception;
	public void ctstagInsert(Map<String, List<CtstagDto>> map) throws Exception;
	public List<CtscateDto> ctscateSelectAll() throws Exception;
	public void ctsUpdate(CtsDto cDto) throws Exception;
	public void ctsDelete(Map<String, Object> map) throws Exception;
}
