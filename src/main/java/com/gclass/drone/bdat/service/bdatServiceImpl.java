package com.gclass.drone.bdat.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gclass.drone.bdat.dao.bdatDao;
import com.gclass.drone.bdat.dto.bdatDto;


@Service
public class bdatServiceImpl implements bdatService {

	@Inject
	private bdatDao bdatdao;
	
	@Transactional
	@Override
	public void addbdat(bdatDto dto) throws Exception {

		bdatdao.create(dto);
	}

	
	@Override
	public List<bdatDto> bdatlist(Integer subjno, Integer bno) throws Exception {
	
		return bdatdao.bdatlist(subjno, bno);
	}

	@Override
	public void modifybdat(bdatDto dto) throws Exception {

		bdatdao.update(dto);
	}
	
	@Transactional
	@Override
	public void removebdat(Integer subjno, Integer bno, Integer bdatno) throws Exception {
		
		bdatdao.delete(subjno, bno, bdatno);
	}

	@Override
	public int count(Integer subjno, Integer bno) throws Exception {
		return bdatdao.count(subjno, bno);
	}

}
