package com.gclass.drone.mem.service;


import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.gclass.drone.mem.dao.MemDao;
import com.gclass.drone.mem.dto.MemDto;


@Service
public class MemServiceImpl implements MemService {

	@Inject
	private MemDao dao;

	@Override
	public void regist(MemDto board) throws Exception {
		dao.create(board);
	}

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

}
