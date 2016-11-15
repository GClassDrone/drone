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
	public List<bdatDto> list(Integer subjno, Integer bno) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		
		paramMap.put("subjno", subjno);
		paramMap.put("bno", bno);
		
		return session.selectList(namespace + ".list", paramMap);
	}

	@Override
	public void create(Integer subjno, Integer bno, Integer bdatno) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		
		paramMap.put("subjno", subjno);
		paramMap.put("bno", bno);
		paramMap.put("bdatno", bdatno);
		
		session.insert(namespace + ".create", paramMap);
	}

	@Override
	public void update(Integer subjno, Integer bno, Integer bdatno) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		
		paramMap.put("subjno", subjno);
		paramMap.put("bno", bno);
		paramMap.put("bdatno", bdatno);
		
		
		session.update(namespace + ".update" , paramMap);
	}

	@Override
	public void delete(Integer subjno, Integer bno, Integer bdatno) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		
		paramMap.put("subjno", subjno);
		paramMap.put("bno", bno);
		paramMap.put("bdatno", bdatno);
		
		
		session.delete(namespace + ".delete", paramMap);
	}

	@Override
	public int count(Integer subjno, Integer bno, Integer bdatno) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		
		paramMap.put("subjno", subjno);
		paramMap.put("bno", bno);
		paramMap.put("bdatno", bdatno);
		
		
		return session.selectOne(namespace +".count", paramMap);
	}

}
