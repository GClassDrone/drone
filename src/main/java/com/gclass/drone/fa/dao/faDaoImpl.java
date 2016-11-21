package com.gclass.drone.fa.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.gclass.drone.fa.dto.faDto;
import com.gclass.drone.mem.dto.faCatePageDto;


@Repository
public class faDaoImpl implements faDao{

	@Inject
	private SqlSession session;

	private static String namespace = "com.gclass.drone.mapper.MemMapper";

	@Override
	public void delete(Integer mno, Integer fno) throws Exception {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("bno", mno);
		map.put("fno", fno);
		
		session.delete(namespace + ".delete", map);
	}

	@Override
	public void update(faDto dto) throws Exception {
		session.update(namespace + ".delete", dto);
		
	}

	@Override
	public List<faDto> falist(faCatePageDto cpDto) throws Exception {
		return  session.selectList(namespace+".falist", cpDto);
	}
}
