package com.gclass.drone.login.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.gclass.drone.login.dto.LoginDto;
import com.gclass.drone.mem.dto.MemDto;

@Repository
public class LoginDaoImpl implements LoginDao {

	@Inject
	private SqlSession session;
	
	private static String namespace ="com.gclass.drone.mapper.LoginMapper";
	
	@Override
	public void Insert(LoginDto dto) throws Exception {
		session.insert(namespace +".insert", dto);
	}
	@Override
	public MemDto login(LoginDto dto) throws Exception {
		return session.selectOne(namespace +".login", dto);
	}
	@Override
	public List<LoginDto> sido() throws Exception {
		return null;
	}
}
