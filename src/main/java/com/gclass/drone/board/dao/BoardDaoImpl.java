package com.gclass.drone.board.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.gclass.drone.board.dto.BoardDto;


@Repository
public class BoardDaoImpl implements BoardDao{

	@Inject
	private SqlSession session;

	private static String namespace = "com.gclass.drone.mapper.BoardMapper";

	@Override
	public void create(BoardDto dto) throws Exception {
		session.insert(namespace + ".create", dto);
	}

	@Override
	public void delete(Integer mno) throws Exception {
		session.delete(namespace + ".delete", mno);
	}

	@Override
	public BoardDto read(Integer mno) throws Exception {
		return session.selectOne(namespace + ".read", mno);
	}

	@Override
	public void update(BoardDto dto) throws Exception {
		session.update(namespace + ".update", dto);
	}
}
