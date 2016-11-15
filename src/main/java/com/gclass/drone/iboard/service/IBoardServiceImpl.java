package com.gclass.drone.iboard.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.gclass.drone.common.InitSearchPage;
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
	public IBoardDto read(Integer bno,Integer subjno) throws Exception {
		
		return dao.read(bno, subjno);
	}

	@Override
	public void modify(IBoardDto board) throws Exception {
		dao.update(board);
	}

	@Override
	public void remove(Integer bno, Integer subjno) throws Exception {
		dao.delete(bno, subjno);
	}

	@Override
	public List<IBoardDto> listAll(Integer subjno, InitSearchPage isp) throws Exception {
		
		return dao.listAll(subjno, isp);
	}

	@Override
	public int totalRow(Integer subjno, InitSearchPage isp) throws Exception {
		return dao.totalRow(subjno, isp);
	}
}
