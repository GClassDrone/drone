package com.gclass.drone.board.service;


import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.gclass.drone.board.dao.BoardDao;
import com.gclass.drone.board.dto.BoardDto;



@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDao dao;

	@Override
	public void regist(BoardDto board) throws Exception {
		
	}

	@Override
	public BoardDto read(Integer bno) throws Exception {
		return null;
	}

	@Override
	public void modify(BoardDto board) throws Exception {
		
	}

	@Override
	public void remove(Integer bno) throws Exception {
		
	}

}
