package com.gclass.drone.loc.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.gclass.drone.loc.dao.LocDao;
import com.gclass.drone.loc.dto.LocDto;

@Service
public class LocServiceImpl implements LocService {

	@Inject
	private LocDao dao;
	
	@Override
	public List<LocDto> listSido() throws Exception {
		return dao.sido();
	}

	@Override
	public List<LocDto> listSigungu(String sido) throws Exception {
		
		return dao.sigungu(sido);
	}

}
