package com.gclass.drone.mem.service;


import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gclass.drone.category.dto.CateDto;
import com.gclass.drone.mem.dao.MemDao;
import com.gclass.drone.mem.dto.MemDto;
import com.gclass.drone.mem.dto.MnoCatePageDto;


@Service
public class MemServiceImpl implements MemService {

	@Inject
	private MemDao dao;
	
	@Override
	public MemDto read(Integer mno) throws Exception {
		return dao.read(mno);
	}

	@Transactional
	@Override
	public void modify(MemDto board) throws Exception {
		dao.update(board);
		
		String[] files = board.getFiles();
		
		if(files == null) {return;}
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
	public int dulogin(String niknm) throws Exception {
		return dao.dulogin(niknm);
	}

	@Override
	public List<MemDto> mylist(Integer mno) throws Exception {
		return dao.mylist(mno);
	}

	@Override
	public void binsert(MemDto dto) throws Exception {
		dao.binsert(dto);
	}

	@Override
	public List<CateDto> conlist(MnoCatePageDto cpDto) throws Exception {
		return dao.conlist(cpDto);
	}
}
