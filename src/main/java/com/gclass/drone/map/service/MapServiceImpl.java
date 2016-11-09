package com.gclass.drone.map.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.gclass.drone.map.dao.MapDao;
import com.gclass.drone.map.dto.CtsDto;
import com.gclass.drone.map.dto.LocDto;

@Service
public class MapServiceImpl implements MapService {
	
	@Inject
	private MapDao mDao;
	
	@Override
	public List<LocDto> addrlist() {
		return mDao.addrlist();
	}
	
	@Override
	public void addrupdate(LocDto lDto) {
		mDao.addrupdate(lDto);
	}
	
	@Override
	public List<CtsDto> ctsSelectAll() {
		return mDao.ctsSelectAll();
	}
}
