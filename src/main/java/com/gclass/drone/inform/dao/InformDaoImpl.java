package com.gclass.drone.inform.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.gclass.drone.common.InitSearchPage;
import com.gclass.drone.inform.dto.InfoPageDto;
import com.gclass.drone.inform.dto.InformDto;

@Repository
public class InformDaoImpl implements InformDao {
	

	@Inject
	private SqlSession session;
	
	private static final Logger logger = LoggerFactory.getLogger(InformDaoImpl.class);
	private static String namespace ="com.gclass.drone.mapper.InformMapper";
	
	@Override
	public void insert(InformDto dto) throws Exception {
		int a = session.insert(namespace +".insert", dto);
		logger.info("daoim"+a);
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
	public List<InformDto> listAll(InitSearchPage isp) throws Exception {
		return session.selectList(namespace+".listAll", isp);
	}

	@Override
	public int totalRow(InitSearchPage isp) throws Exception {
		return session.selectOne(namespace+".totalRow", isp);
	}
	
	//시장동향
	@Override
	public List<InformDto> infoList(InfoPageDto dto) throws Exception {
		return session.selectList(namespace +".list", dto);
	}
	@Override
	public int infoTotalRow(InfoPageDto dto) throws Exception {
		return session.selectOne(namespace +".total", dto);
	}
}