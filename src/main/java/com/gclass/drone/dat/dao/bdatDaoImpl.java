package com.gclass.drone.dat.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.gclass.drone.dat.dto.bdatDto;

@Repository
public class bdatDaoImpl implements bdatDao {


	@Inject
	private SqlSession session;

	private static String namespace = "com.gclass.drone.mapper.BdatMapper";
	
	@Override
	public List<bdatDto> list(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void create(bdatDto dto) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(bdatDto dto) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Integer bdatno) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public int count(Integer bdatno) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
