package com.gclass.drone.iboard.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.gclass.drone.iboard.dao.IBoardDao;
import com.gclass.drone.iboard.dto.IBoardDto;

@Service
public class IBoardServiceImpl implements IBoardService {

	@Inject
	private IBoardDao dao;

	@Override
	public void regist(IBoardDto board) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public IBoardDto read(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void modify(IBoardDto board) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void remove(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		
	}


}
