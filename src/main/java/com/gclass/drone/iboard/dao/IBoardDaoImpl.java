package com.gclass.drone.iboard.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.gclass.drone.iboard.dto.IBoardDto;


@Repository
public class IBoardDaoImpl implements IBoardDao{

	@Inject
	private SqlSession session;

	private static String namespace = "com.gclass.drone.mapper.IBoardMapper";

	@Override
	public void create(IBoardDto dto) throws Exception {
		session.insert(namespace + ".create", dto);
	}

	@Override
	public void delete(Integer mno) throws Exception {
		session.delete(namespace + ".delete", mno);
	}

	@Override
	public IBoardDto read(Integer mno) throws Exception {
		return session.selectOne(namespace + ".read", mno);
	}

	@Override
	public void update(IBoardDto dto) throws Exception {
		session.update(namespace + ".update", dto);
	}

	@Override
	public List<IBoardDto> listAll() throws Exception {
		return null;
	}
}
