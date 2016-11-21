package com.gclass.drone.inform.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.gclass.drone.common.InitSearchPage;
import com.gclass.drone.inform.dao.InformDao;
import com.gclass.drone.inform.dto.InfoPageDto;
import com.gclass.drone.inform.dto.InformDto;

@Service
public class InformServiceImpl implements InformSerivce {

	@Inject
	private InformDao dao;
	
	private static final Logger logger=
			LoggerFactory.getLogger(InformServiceImpl.class);
	
	@Override
	public void regist(InformDto dto) throws Exception {

	}

	@Override
	public InformDto read(InformDto dto) throws Exception {
//		dao.updateViewCnt(ino,igubun);
		return dao.read(dto);
	}

	@Override
	public void modify(InformDto dto) throws Exception {

	}

	@Override
	public void remove(InformDto dto) throws Exception {
		dao.delete(dto);

	}
	
	@Override
	public List<InformDto> listAll(InitSearchPage isp) throws Exception {
		return dao.listAll(isp);
	}

	@Override
	public int totalRow(InitSearchPage isp) throws Exception {
		return dao.totalRow(isp);
	}
	
	@Override
	public List<InformDto> infoList(InfoPageDto dto) throws Exception {
		dto.setTotalRow(dao.infoTotalRow(dto));
		return dao.infoList(dto);
	}
}