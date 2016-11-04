package com.gclass.drone.bdat.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gclass.drone.bdat.dao.bdatDao;
import com.gclass.drone.bdat.dto.bdatDto;
import com.gclass.drone.iboard.dao.IBoardDao;


@Service
public class bdatServiceImpl implements bdatService {

	@Inject
	private bdatDao bdatdao;
	
	@Inject
	private IBoardDao iboardDao;
	
	@Transactional
	@Override
	public void addbdat(bdatDto dto) throws Exception {

		bdatdao.create(dto);
	}

	
	@Override
	public List<bdatDto> listbdat(Integer bno) throws Exception {
		
		return bdatdao.list(bno);
	}

	@Override
	public void modifybdat(bdatDto dto) throws Exception {

		bdatdao.update(dto);
	}
	
	@Transactional
	@Override
	public void removebdat(Integer rno) throws Exception {

	}

	@Override
	public int count(Integer bno) throws Exception {
		return bdatdao.count(bno);
	}

}
