package com.gclass.drone.loc.service;

import java.util.List;
import com.gclass.drone.loc.dto.LocDto;

public interface LocService {
	
	public List<LocDto> listSido()throws Exception;
	
	public List<LocDto> listSigungu(String sido)throws Exception;
	
}
