package com.gclass.drone.mem.service;


import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import com.gclass.drone.mem.dao.MemDao;
import com.gclass.drone.mem.dto.MemDto;


@Service
public class MemServiceImpl implements MemService {

	@Inject
	private MemDao dao;
	
	@Override
	public MemDto read(Integer mno) throws Exception {
		return dao.read(mno);
	}

	@Override
	public void modify(MemDto board) throws Exception {
		dao.update(board);
	}

	@Override
	public void remove(Integer mno) throws Exception {
		dao.delete(mno);
	}
	
	@Override
	public List<MemDto> listAll() throws Exception {
		return dao.listAll();
	}
	
	//로그인
	@Override
	public MemDto login(String siteid , String siteno) throws Exception {
	
		return dao.login(siteid, siteno);
	}
	@Override
	public void regist(MemDto dto) throws Exception {
		System.out.println(dto);
		dao.insert(dto);
	}
	@Override
	public MemDto dulogin(String niknm) throws Exception {
		System.out.println(niknm+"niknm");
		return dao.dulogin(niknm);
	}
}
