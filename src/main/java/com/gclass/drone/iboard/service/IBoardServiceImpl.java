package com.gclass.drone.iboard.service;

import java.util.List;

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
		dao.create(board);
	}

	@Override
	public IBoardDto read(Integer bno) throws Exception {
		return dao.read(bno);
	}

	@Override
	public void modify(IBoardDto board) throws Exception {
		dao.update(board);
	}

	@Override
	public void remove(Integer bno) throws Exception {
		dao.delete(bno);
	}

	@Override
	public List<IBoardDto> listAll(Integer subjno) throws Exception {
		return dao.listAll(subjno);
	}


}
