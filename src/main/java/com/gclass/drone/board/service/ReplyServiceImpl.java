package com.gclass.drone.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gclass.drone.board.dao.BoardDao;
import com.gclass.drone.board.dao.ReplyDao;
import com.gclass.drone.board.dto.InitPage;
import com.gclass.drone.board.dto.ReplyDto;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Inject
	private ReplyDao dao;
	
	@Inject
	private BoardDao bdao;

	@Override
	public int count(Integer num) throws Exception {
		return dao.count(num);
	}
	
	@Override
	public List<ReplyDto> list(Integer num, InitPage ipg) throws Exception {
		return dao.list(num, ipg);
	}

	@Transactional
	@Override
	public void insert(ReplyDto reply) throws Exception {
		dao.insert(reply);
		bdao.updateReplyCnt(reply.getNum(), 1);
	}

	@Override
	public void update(ReplyDto reply) throws Exception {
		dao.update(reply);
	}

	@Transactional
	@Override
	public void delete(Integer rno) throws Exception {
		int num = dao.getNum(rno);
		dao.delete(rno);
		bdao.updateReplyCnt(num, -1);
	}

}
