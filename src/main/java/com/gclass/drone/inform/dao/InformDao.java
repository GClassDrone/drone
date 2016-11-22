package com.gclass.drone.inform.dao;

import java.util.List;

import com.gclass.drone.common.InitSearchPage;
import com.gclass.drone.inform.dto.InformDto;
import com.gclass.drone.inform.dto.InfoPageDto;

public interface InformDao {
	
	public void insert(InformDto dto)throws Exception;
	
	public InformDto read(InformDto dto)throws Exception;
	
	public void update(InformDto dto)throws Exception;
	
	public void delete(InformDto dto)throws Exception;
	
	public List<InformDto> listAll(InitSearchPage isp)  throws Exception;
	
	public int totalRow(InitSearchPage isp) throws Exception;
	
	//시장동향
	public List<InformDto> infoList(InfoPageDto dto)throws Exception;
	
	public int infoTotalRow(InfoPageDto dto)throws Exception;
}

