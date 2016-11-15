package com.gclass.drone.category.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.gclass.drone.category.dto.CateDto;

@Repository
public class CateDaoImpl implements CateDao {
	
	private static final String namespace = "com.gclass.drone.mapper.CateMapper";
	private static final Logger logger = LoggerFactory.getLogger(CateDaoImpl.class);
	
	@Inject
	private SqlSession session;

	@Override
	public List<CateDto> ctsCateList(int[] cateArray) throws Exception {
		return session.selectList(namespace+".ctsCateList", cateArray);
	}
}
