package com.gclass.drone.dat.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.gclass.drone.dat.dto.ReplyDto;

@Repository
public class ReplyDaoImpl implements ReplyDao {
	
	@Inject
	private SqlSession session;
	
	private static String namespace = "com.kedu.mapper.replyMapper";
	
	@Override
	public List<ReplyDto> list(Integer bno) throws Exception {

		return session.selectList(namespace + ".list", bno);
	}

	@Override
	public void create(ReplyDto dto) throws Exception {
		
		session.insert(namespace + ".create", dto);
	}

	@Override
	public void update(ReplyDto dto) throws Exception {

		session.update(namespace + ".update" , dto);
	}

	@Override
	public void delete(Integer rno) throws Exception {

		session.delete(namespace + ".delete",rno);
	}

	@Override
	public int count(Integer bno) throws Exception {

		return session.selectOne(namespace +".count", bno);
	}

	@Override
	public int getBno(Integer rno) throws Exception {
	
		return session.selectOne(namespace+".getBno", rno);
	}
}
