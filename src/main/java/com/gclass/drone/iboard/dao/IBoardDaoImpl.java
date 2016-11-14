package com.gclass.drone.iboard.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.gclass.drone.common.InitSearchPage;
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
	public IBoardDto read(Integer bno, Integer subjno) throws Exception {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("bno", bno);
		map.put("subjno", subjno);
		
		return session.selectOne(namespace + ".read", map);
	}

	@Override
	public void update(IBoardDto dto) throws Exception {
		session.update(namespace + ".update", dto);
	}

	@Override
	public List<IBoardDto> listAll(Integer subjno, InitSearchPage isp) throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("subjno", subjno);
		map.put("isp", isp);
		
		return session.selectList(namespace+".iboardlistAll", map);
	}
	
	@Override
	public int totalRow(Integer subjno, InitSearchPage isp) throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("subjno", subjno);
		map.put("isp", isp);
		
		return session.selectOne(namespace+".totalRow", map);
	}
}
