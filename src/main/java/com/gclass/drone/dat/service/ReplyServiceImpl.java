package com.gclass.drone.dat.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kedu.board.dao.BoardDao;
import com.kedu.board.dao.ReplyDao;
import com.kedu.board.dto.Criteria;
import com.kedu.board.dto.ReplyDto;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Inject
	private ReplyDao replydao;
	
	@Inject
	private BoardDao boardDao;
	
	@Transactional
	@Override
	public void addReply(ReplyDto dto) throws Exception {

		replydao.create(dto);
		boardDao.updateReplyCnt(dto.getBno(), 1);
	}

	
	@Override
	public List<ReplyDto> listReply(Integer bno) throws Exception {
		
		return replydao.list(bno);
	}

	@Override
	public void modifyReply(ReplyDto dto) throws Exception {

		replydao.update(dto);
	}
	
	@Transactional
	@Override
	public void removeReply(Integer rno) throws Exception {
		int bno = replydao.getBno(rno);
		replydao.delete(rno);
		boardDao.updateReplyCnt(bno, -1);
	}

	@Override
	public List<ReplyDto> listReplyPage(Integer bno, Criteria cri) throws Exception {
		return replydao.listPage(bno, cri);
	}

	@Override
	public int count(Integer bno) throws Exception {
		return replydao.count(bno);
	}

}
