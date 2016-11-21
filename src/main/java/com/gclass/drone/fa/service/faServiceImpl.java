package com.gclass.drone.fa.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.gclass.drone.fa.dao.faDao;
import com.gclass.drone.fa.dto.faDto;

@Service
public class faServiceImpl implements faService {

	@Inject
	private faDao dao;

	@Override
	public void modify(faDto dto) throws Exception {
		dao.update(dto);
	}

	@Override
	public void remove(Integer mno, Integer fno) throws Exception {
		dao.delete(mno, fno);
	}

	@Override
	public List<faDto> falist(Integer mno) throws Exception {
		
		return dao.falist(mno);
	}
}
