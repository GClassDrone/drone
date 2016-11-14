package com.gclass.drone.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.gclass.drone.board.dao.BsubjDao;
import com.gclass.drone.board.dto.BsubjDto;

@Service
public class BsubjServiceImpl implements BsubjService {


	@Inject
	private BsubjDao bDao;
	
	@Override
	public void insert(BsubjDto bDto) throws Exception {
		bDao.insert(bDto);
	}

	@Override
	public void update(BsubjDto bDto) throws Exception {
		bDao.update(bDto);
	}

	@Override
	public void delete(Integer subjno) throws Exception {
		bDao.delete(subjno);
	}

	@Override
	public BsubjDto read(Integer subjno) throws Exception {
		return bDao.read(subjno);
	}

	@Override
	public List<BsubjDto> sublistAll(Integer bcateno) throws Exception {
		return bDao.sublistAll(bcateno);
	}

}
