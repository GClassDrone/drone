package com.gclass.drone.inform.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.gclass.drone.common.InitSearchPage;
import com.gclass.drone.inform.dao.InformDao;
import com.gclass.drone.inform.dto.InformDto;

@Service
public class InformServiceImpl implements InformSerivce {

	@Inject
	private InformDao dao;
	
	@Override
	public void regist(InformDto dto) throws Exception {

	}

	@Override
	public InformDto read(Integer ino, String igubun) throws Exception {
		return null;
	}

	@Override
	public void modify(InformDto dto) throws Exception {

	}

	@Override
	public void remove(Integer ino, String igubun) throws Exception {

	}
	
	@Override
	public List<InformDto> listAll(InitSearchPage isp) throws Exception {
		return dao.listAll(isp);
	}

	@Override
	public int totalRow(InitSearchPage isp) throws Exception {
		return dao.totalRow(isp);
	}
	
	
}