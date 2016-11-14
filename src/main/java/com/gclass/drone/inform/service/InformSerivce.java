package com.gclass.drone.inform.service;

import java.util.List;

import com.gclass.drone.inform.dto.Criteria;
import com.gclass.drone.inform.dto.InformDto;
import com.gclass.drone.inform.dto.InitSearchPages;


public interface InformSerivce {
	
	public void regist(InformDto dto)throws Exception;
	
	public InformDto read(Integer ino, String igubun)throws Exception;
	
	public void modify(InformDto dto)throws Exception;
	
	public void remove(Integer ino, String igubun)throws Exception;
	
	public List<InformDto> listAll(InitSearchPages isp)  throws Exception;
	
	public int totalRow(InitSearchPages isp) throws Exception;
	
}
