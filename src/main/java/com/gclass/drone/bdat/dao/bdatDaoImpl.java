package com.gclass.drone.bdat.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public List<bdatDto> bdatlist(Integer subjno, Integer bno) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		
		paramMap.put("subjno", subjno);
		paramMap.put("bno", bno);
		
		
		return session.selectList(namespace + ".bdatlist", paramMap);
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
	public void delete(Integer subjno, Integer bno, Integer bdatno) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		
		paramMap.put("subjno", subjno);
		paramMap.put("bno", bno);
		paramMap.put("bdatno", bdatno);
		
		System.out.println("+++"+paramMap);
		session.delete(namespace + ".delete", paramMap);
	}

	@Override
	public int count(Integer subjno, Integer bno) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		
		paramMap.put("subjno", subjno);
		paramMap.put("bno", bno);
		
		
		return session.selectOne(namespace +".count", paramMap);
	}

}
