package com.gclass.drone.map.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.gclass.drone.map.dto.CtsDto;
import com.gclass.drone.map.dto.CtscateDto;
import com.gclass.drone.map.dto.LocDto;
import com.gclass.drone.map.dto.MemViewDto;

@Repository
public class MapDaoImpl implements MapDao {

	private static final String namespace = "com.gclass.drone.map.mapper";
	
	private static final Logger logger = LoggerFactory.getLogger(MapDaoImpl.class);
	
	@Inject
	private SqlSession session;
	
	@Override
	public List<LocDto> addrlist() throws Exception {
		return session.selectList(namespace+".addrlist");
	}
	
	@Override
	public void addrupdate(LocDto lDto) throws Exception {
		session.update(namespace+".addrupdate", lDto);
	}
	
	@Override
	public List<CtsDto> ctsSelectAll() throws Exception {
		return session.selectList(namespace+".ctsSelectAll");
	}

	@Override
	public CtsDto ctsSelectOne(CtsDto cDto) throws Exception {
		return session.selectOne(namespace+".ctsSelectOne", cDto);
	}

	@Override
	public void ctsUpdateReadcnt(CtsDto cDto) throws Exception {
		session.update(namespace+".ctsUpdateReadcnt", cDto);
	}

	@Override
	public List<MemViewDto> memSelectAll() throws Exception{
		return session.selectList(namespace+".memSelectAll");
	}

	@Override
	public List<CtsDto> hotclipVideo() throws Exception {
		return session.selectList(namespace+".hotclipVideo");
	}

	@Override
	public List<MemViewDto> hotclipPilot() throws Exception {
		return session.selectList(namespace+".hotclipPilot");
	}

	@Override
	public void ctsInsert(CtsDto cDto) throws Exception {
		session.insert(namespace+".ctsInsert", cDto);
	}

	@Override
	public List<CtscateDto> ctscateSelectAll() throws Exception {
		return session.selectList(namespace+".ctscateSelectAll");
	}

	@Override
	public void ctsUpdate(CtsDto cDto) throws Exception {
		session.update(namespace+".ctsUpdate", cDto);
	}

	@Override
	public void ctsDelete(Map<String, Object> map) throws Exception {
		session.update(namespace+".ctsDelete", map);
	}
}
