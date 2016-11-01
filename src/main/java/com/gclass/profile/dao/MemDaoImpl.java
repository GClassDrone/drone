package com.gclass.profile.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.gclass.profile.dto.MemDto;

@Repository
public class MemDaoImpl implements MemDao{

	@Inject
	private SqlSession session;

	private static String namespace = "com.gclass.mapper.MemMapper";

	@Override
	public void create(MemDto dto) throws Exception {
		session.insert(namespace + ".create", dto);
	}

	@Override
	public void delete(Integer mno) throws Exception {
		session.delete(namespace + ".delete", mno);
	}

	@Override
	public MemDto read(Integer mno) throws Exception {
		return session.selectOne(namespace + ".read", mno);
	}

	@Override
	public void update(MemDto dto) throws Exception {
		session.update(namespace + ".update", dto);
	}
}
