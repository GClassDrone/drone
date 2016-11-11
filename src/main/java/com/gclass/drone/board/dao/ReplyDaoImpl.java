package com.gclass.drone.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.gclass.drone.board.dto.InitPage;
import com.gclass.drone.board.dto.ReplyDto;

@Repository
public class ReplyDaoImpl implements ReplyDao {
	
	@Inject
	private SqlSession session;
	
	private static String namespace = "com.gclass.drone.mapper.BoardMapper";

	@Override
	public int count(Integer num) throws Exception {
		return session.selectOne(namespace+".count", num);
	}
	
	@Override
	public List<ReplyDto> list(Integer num, InitPage ipg) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("num", num);
		map.put("ipg", ipg);
		
		return session.selectList(namespace+".list", map);
	}

	@Override
	public void insert(ReplyDto reply) throws Exception {
		session.insert(namespace+".insert", reply);
	}

	@Override
	public void update(ReplyDto reply) throws Exception {
		session.update(namespace+".update", reply);
	}

	@Override
	public void delete(Integer rno) throws Exception {
		session.delete(namespace+".delete", rno);
	}

	@Override
	public int getNum(Integer rno) throws Exception {
		return session.selectOne(namespace+".getNum", rno);
	}

}
