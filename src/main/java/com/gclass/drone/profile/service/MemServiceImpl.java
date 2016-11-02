package com.gclass.drone.profile.service;


import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.gclass.drone.profile.dao.MemDao;
import com.gclass.drone.profile.dto.MemDto;


@Service
public class MemServiceImpl implements MemService {

	@Inject
	private MemDao dao;

	@Override
	public void regist(MemDto board) throws Exception {
		
	}

	@Override
	public MemDto read(Integer mno) throws Exception {
		return null;
	}

	@Override
	public void modify(MemDto board) throws Exception {
		
	}

	@Override
	public void remove(Integer mno) throws Exception {
		
	}

}
