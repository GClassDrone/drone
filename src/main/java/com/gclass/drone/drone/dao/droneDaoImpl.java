package com.gclass.drone.drone.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.gclass.drone.drone.dto.droneDto;

@Repository
public class droneDaoImpl implements droneDao {

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.gclass.drone.mapper.MemMapper";
	
	@Override
	public List<droneDto> dronelist(Integer mno) throws Exception {
		return session.selectList(namespace +".dronelist", mno);
	}

	@Override
	public void update(droneDto dto) throws Exception {
		session.update(namespace + ".droneupdate", dto);
	}

	@Override
	public void delete(Integer mdrno) throws Exception {
		session.delete(namespace + ".dronedelete", mdrno);
		
	}

}
