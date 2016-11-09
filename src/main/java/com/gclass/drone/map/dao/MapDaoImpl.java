package com.gclass.drone.map.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.gclass.drone.map.dto.CtsDto;
import com.gclass.drone.map.dto.LocDto;

@Repository
public class MapDaoImpl implements MapDao {

	private static final String namespace = "com.gclass.drone.map.mapper";
	
	private static final Logger logger = LoggerFactory.getLogger(MapDaoImpl.class);
	
	@Inject
	private SqlSession session;
	
	@Override
	public List<LocDto> addrlist() {
		return session.selectList(namespace+".addrlist");
	}
	
	@Override
	public void addrupdate(LocDto lDto) {
		session.update(namespace+".addrupdate", lDto);
	}
	
	@Override
	public List<CtsDto> ctsSelectAll() {
		return session.selectList(namespace+".ctsSelectAll");
	}
}
