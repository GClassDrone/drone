package com.gclass.drone.mem.dao;

import java.util.HashMap;
import java.util.Map;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.gclass.drone.category.dto.CateDto;
import com.gclass.drone.mem.dto.MemDto;
import com.gclass.drone.mem.dto.MnoCatePageDto;
import com.gclass.drone.mem.dto.MnoPageDto;

@Repository
public class MemDaoImpl implements MemDao{

	@Inject
	private SqlSession session;

	private static String namespace = "com.gclass.drone.mapper.MemMapper";

	@Override
	public void delete(Integer mno) throws Exception {
		session.delete(namespace + ".delete", mno);
	}

	@Override
	public MemDto read(Integer mno) throws Exception {
		return session.selectOne(namespace + ".read", mno);
	}

	@Override
	public void update(MemDto dto) throws Exception {
		session.update(namespace + ".update", dto);
	}
	
	@Override
	public List<MemDto> listAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}
	
	//로그인확인
	@Override
	public MemDto login(String siteid, String siteno) throws Exception {
		
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("siteno", siteno);
		paramMap.put("siteid", siteid);
		
		return session.selectOne(namespace +".login", paramMap);
	}
	
	@Override
	public void insert(MemDto dto) throws Exception {
		session.insert(namespace +".insert", dto);
	}
	
	@Override
	public int dulogin(String niknm) throws Exception {
		return session.selectOne(namespace +".dulogin", niknm);
	}

	/*프로필에서 자기가 개설한 프로필 리스트 뽑는거*/
	@Override
	public List<MemDto> mylist(Integer mno) throws Exception {
		return session.selectList(namespace+".mylist", mno);
	}

	@Override
	public void binsert(MemDto dto) throws Exception {
		session.insert(namespace +".binsert", dto);
	}

	@Override
	public List<CateDto> conlist(MnoCatePageDto cpDto) throws Exception {
		return session.selectList(namespace+".conlist", cpDto);
	}

	@Override
	public List<MemDto> memlist(MnoPageDto cpDto) throws Exception {
		return session.selectList(namespace+".listAll", cpDto);
	}
}
