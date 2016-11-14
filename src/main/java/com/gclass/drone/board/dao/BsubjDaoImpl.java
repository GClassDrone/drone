package com.gclass.drone.board.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.gclass.drone.board.dto.BsubjDto;

@Repository
public class BsubjDaoImpl implements BsubjDao {


	private static String namespace = "com.gclass.drone.mapper.BsubjMapper"; 
	
	@Inject
	private SqlSession session;
	
	@Override
	public List<BsubjDto> sublistAll(Integer bcateno) throws Exception {
		return session.selectList(namespace+".sublistAll", bcateno);
	}

	@Override
	public void insert(BsubjDto bDto) throws Exception {
		session.insert(namespace+".insert", bDto);
	}

	@Override
	public void update(BsubjDto bDto) throws Exception {
		session.update(namespace+".update", bDto);
		
	}

	@Override
	public void delete(Integer subjno) throws Exception {
		session.delete(namespace+".delete", subjno);
		
	}

	@Override
	public BsubjDto read(Integer subjno) throws Exception {
		return session.selectOne(namespace + ".read", subjno);
	}
	
}
