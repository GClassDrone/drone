package com.gclass.drone.loc.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.gclass.drone.loc.dto.LocDto;

@Repository
public class LocDaoImpl implements LocDao {

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.gclass.drone.mapper.LocMapper";
	
	@Override
	public List<LocDto> sido() throws Exception {
		return session.selectList(namespace + ".sido");
	}

	@Override
	public List<LocDto> sigungu(String sido) throws Exception {
		return session.selectList(namespace + ".sigungu", sido);
	}
}
