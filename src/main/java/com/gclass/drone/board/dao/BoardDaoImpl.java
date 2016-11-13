package com.gclass.drone.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.gclass.drone.board.dto.AttachDto;
import com.gclass.drone.board.dto.BoardDto;
import com.gclass.drone.board.dto.BsubjDto;
import com.gclass.drone.board.dto.InitSearchPage;

@Repository
public class BoardDaoImpl implements BoardDao {

	private static String namespace = "com.gclass.drone.mapper.BoardMapper"; 
	
	@Inject
	private SqlSession session;
	
	
	@Override
	public void insert(BoardDto bDto) throws Exception {
		session.insert(namespace+".insert", bDto);
	}

	@Override
	public void update(BoardDto bDto) throws Exception {
		session.update(namespace+".update", bDto);
	}

	@Override
	public void delete(Integer subjno, int bno) throws Exception {
		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("subjno", subjno);
		map.put("bno", bno);
		session.delete(namespace+".delete", map);
	}

	@Override
	public BoardDto read(Integer subjno, int bno) throws Exception {
		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("subjno", subjno);
		map.put("bno", bno);
		return session.selectOne(namespace+".read", map);
	}
	

	@Override
	public List<BoardDto> listAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}

	@Override
	public int totalRow(InitSearchPage isp) throws Exception {
		return session.selectOne(namespace+".totalRow", isp);
	}
	
	@Override
	public void readCountUp(Integer num) throws Exception {
		session.update(namespace+".readCountUp", num);
	}

	@Override
	public void updateReplyCnt(Integer num, int cnt) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("num", num);
		map.put("cnt", cnt);
		session.update(namespace+".updateReplyCnt", map);
	}

	@Override
	public void addAttach(String fullname) throws Exception {
		session.insert(namespace+".addAttach", fullname);
	}

	@Override
	public List<String> getAttach(Integer num) throws Exception {
		return session.selectList(namespace+".getAttach", num);
	}

	@Override
	public void deleteAllAttach(Integer num) throws Exception {
		session.delete(namespace+".deleteAllAttach", num);
	}

	@Override
	public void replaceAttach(String fullName, Integer num) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("num", num);
		map.put("fullname", fullName);
		session.insert(namespace+".replaceAttach", map);
	}

	@Override
	public void deleteOneAttach(AttachDto attachDto) throws Exception {
		session.delete(namespace+".deleteOneAttach", attachDto);
	}

	@Override
	public List<BsubjDto> sublistAll() throws Exception {
		return session.selectList(namespace+".sublistAll");
	}
	
	


}
