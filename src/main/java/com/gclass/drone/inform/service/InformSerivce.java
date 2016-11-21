package com.gclass.drone.inform.service;

import java.util.List;

import com.gclass.drone.common.InitSearchPage;
import com.gclass.drone.inform.dto.InfoPageDto;
import com.gclass.drone.inform.dto.InformDto;


public interface InformSerivce {
	
	public void regist(InformDto dto)throws Exception;
	
	public InformDto read(InformDto dto)throws Exception;
	
	public void modify(InformDto dto)throws Exception;
	
	public void remove(InformDto dto)throws Exception;
	
	public List<InformDto> listAll(InitSearchPage isp)throws Exception;
	
	public int totalRow(InitSearchPage isp) throws Exception;
	
	//시장동향
	public List<InformDto> infoList(InfoPageDto dto)throws Exception;
}
