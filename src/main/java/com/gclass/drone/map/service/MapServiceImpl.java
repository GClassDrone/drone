package com.gclass.drone.map.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.gclass.drone.map.dao.MapDao;
import com.gclass.drone.map.dto.CtsDto;
import com.gclass.drone.map.dto.CtscateDto;
import com.gclass.drone.map.dto.LocDto;
import com.gclass.drone.map.dto.MemViewDto;

@Service
public class MapServiceImpl implements MapService {
	
	@Inject
	private MapDao mDao;
	
	private static final Logger logger = LoggerFactory.getLogger(MapServiceImpl.class);
	
	@Override
	public List<LocDto> addrlist() throws Exception {
		return mDao.addrlist();
	}
	
	@Override
	public void addrupdate(LocDto lDto) throws Exception {
		mDao.addrupdate(lDto);
	}
	
	@Override
	public List<CtsDto> ctsSelectAll() throws Exception {
		return mDao.ctsSelectAll();
	}

	@Override
	public CtsDto ctsSelectOne(CtsDto cDto) throws Exception {
		mDao.ctsUpdateReadcnt(cDto);
		return mDao.ctsSelectOne(cDto);
	}

	@Override
	public List<MemViewDto> memSelectAll() throws Exception {
		return mDao.memSelectAll();
	}

	@Override
	public List<CtsDto> hotclipVideo() throws Exception {
		return mDao.hotclipVideo();
	}

	@Override
	public List<MemViewDto> hotclipPilot() throws Exception {
		return mDao.hotclipPilot();
	}

	@Override
	public void ctsInsert(CtsDto cDto) throws Exception {
		mDao.ctsInsert(cDto);
	}

	@Override
	public List<CtscateDto> ctscateSelectAll() throws Exception {
		return mDao.ctscateSelectAll();
	}

	@Override
	public void ctsUpdate(CtsDto cDto) throws Exception {
		mDao.ctsUpdate(cDto);
	}

	@Override
	public void ctsDelete(int ctsno, int ctscateno) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ctsno", ctsno);
		map.put("ctscateno", ctscateno);
		
		mDao.ctsDelete(map);
	}
}
