package com.gclass.drone.map.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.gclass.drone.map.dao.MapDao;
import com.gclass.drone.map.dto.CtsDto;
import com.gclass.drone.map.dto.LocDto;
import com.gclass.drone.map.dto.MemViewDto;

@Service
public class MapServiceImpl implements MapService {
	
	@Inject
	private MapDao mDao;
	
	private static final Logger logger = LoggerFactory.getLogger(MapServiceImpl.class);
	
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

	@Override
	public CtsDto ctsSelectOne(CtsDto cDto) {
		mDao.ctsUpdateReadcnt(cDto);
		return mDao.ctsSelectOne(cDto);
	}

	@Override
	public List<MemViewDto> memSelectAll() {
		return mDao.memSelectAll();
	}
}
