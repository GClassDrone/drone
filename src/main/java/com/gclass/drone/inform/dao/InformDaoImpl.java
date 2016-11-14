package com.gclass.drone.inform.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.gclass.drone.inform.dto.Criteria;
import com.gclass.drone.inform.dto.InformDto;
import com.gclass.drone.inform.dto.InitSearchPages;

@Repository
public class InformDaoImpl implements InformDao {
	

	@Inject
	private SqlSession session;
	
	private static String namespace ="com.gclass.drone.mapper.InformMapper";
	
	@Override
	public void insert(InformDto dto) throws Exception {
		session.insert(namespace +".insert", dto);
	}
	@Override
	public InformDto read(InformDto dto) throws Exception {
		return session.selectOne(namespace + ".read", dto);
	}
	@Override
	public void update(InformDto dto) throws Exception {
		session.update(namespace + ".update", dto);
	}
	@Override
	public void delete(InformDto dto) throws Exception {
		session.delete(namespace + ".delete", dto);
	}
	@Override
	public List<InformDto> listAll(InitSearchPages isp) throws Exception {
		return session.selectList(namespace+".listAll", isp);
	}

	@Override
	public int totalRow(InitSearchPages isp) throws Exception {
		return session.selectOne(namespace+".totalRow", isp);
	}
}