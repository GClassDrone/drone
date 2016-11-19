package com.gclass.drone.drone.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.gclass.drone.drone.dao.droneDao;
import com.gclass.drone.drone.dto.droneDto;

@Service
public class droneserviceImpl implements droneservice {

	@Inject
	private droneDao dao;
	
	@Override
	public List<droneDto> dronelist(Integer mno) throws Exception {
		return dao.dronelist(mno);
	}

	@Override
	public void modify(droneDto dto) throws Exception {
		dao.update(dto);
	}

	@Override
	public void romove(Integer mdrno) throws Exception {
		dao.delete(mdrno);
	}

}
