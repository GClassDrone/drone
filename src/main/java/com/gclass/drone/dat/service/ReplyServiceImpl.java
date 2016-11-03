package com.gclass.drone.dat.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gclass.drone.dat.dao.ReplyDao;
import com.gclass.drone.dat.dto.ReplyDto;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Inject
	private ReplyDao replydao;
	
	@Transactional
	@Override
	public void addReply(ReplyDto dto) throws Exception {

		replydao.create(dto);
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
	}

	@Override
	public int count(Integer bno) throws Exception {
		return replydao.count(bno);
	}

}
