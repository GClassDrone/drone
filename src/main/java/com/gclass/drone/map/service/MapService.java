package com.gclass.drone.map.service;

import java.util.List;
import java.util.Map;

import com.gclass.drone.map.dto.CtsDto;
import com.gclass.drone.map.dto.CtscateDto;
import com.gclass.drone.map.dto.CtsdatDto;
import com.gclass.drone.map.dto.FavDto;
import com.gclass.drone.map.dto.LocDto;
import com.gclass.drone.map.dto.MemViewDto;

public interface MapService {
	public List<LocDto> addrlist() throws Exception;
	public void addrupdate(LocDto lDto) throws Exception;
	
	public List<CtsDto> ctsSelectAll() throws Exception;
	public List<MemViewDto> memSelectAll() throws Exception;
	public Map<String, Object> modalInit(CtsDto cDto) throws Exception;
	
	
	public List<CtsDto> hotclipVideo() throws Exception;
	public List<MemViewDto> hotclipPilot() throws Exception;
	
	public void ctsInsert(CtsDto cDto, String ctstagnm) throws Exception;
	public CtsDto ctsSelectOne(CtsDto cDto) throws Exception;
	public void ctsUpdate(CtsDto cDto) throws Exception;
	public void ctsDelete(CtsDto cDto) throws Exception;
	
	public Map<String, Object> favInsert(FavDto fDto) throws Exception;
	public List<CtscateDto> ctscateSelectAll() throws Exception;
	public Map<String, Object> favDelete(FavDto fDto) throws Exception;
	
	public Map<String, Object> ctsdatInsert(CtsdatDto cdDto) throws Exception;
	public Map<String, Object> ctsdatUpdate(CtsdatDto cdDto) throws Exception;
	public Map<String, Object> ctsdatDelete(CtsdatDto cdDto) throws Exception;
}
