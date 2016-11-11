package com.gclass.drone.loc.dao;

import java.util.List;

import com.gclass.drone.loc.dto.LocDto;

public interface LocDao {
	
	public List<LocDto> sido()throws Exception;
	
	public List<LocDto> sigungu(String sido)throws Exception;
	
}
