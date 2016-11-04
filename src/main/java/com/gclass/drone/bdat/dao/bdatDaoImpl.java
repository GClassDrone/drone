package com.gclass.drone.bdat.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.gclass.drone.bdat.dto.bdatDto;

@Repository
public class bdatDaoImpl implements bdatDao {

	@Inject
	private SqlSession session;

	private static String namespace = "com.gclass.drone.mapper.BDatMapper";
	
	@Override
	public List<bdatDto> list(Integer bdatno) throws Exception {
		return session.selectList(namespace + ".list", bdatno);
	}

	@Override
	public void create(bdatDto dto) throws Exception {
		session.insert(namespace + ".create", dto);
	}

	@Override
	public void update(bdatDto dto) throws Exception {
		session.update(namespace + ".update" , dto);
	}

	@Override
	public void delete(Integer bdatno) throws Exception {
		session.delete(namespace + ".delete",bdatno);
	}

	@Override
	public int count(Integer bdatno) throws Exception {
		return session.selectOne(namespace +".count", bdatno);
	}

}
