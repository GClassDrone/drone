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
	public void addbdat(Integer subjno, Integer bno) throws Exception {

		bdatdao.create(subjno, bno);
	}

	
	@Override
	public List<bdatDto> bdatlist(Integer subjno, Integer bno) throws Exception {
	
		return bdatdao.bdatlist(subjno, bno);
	}

	@Override
	public void modifybdat(Integer subjno, Integer bno, Integer bdatno) throws Exception {

		bdatdao.update(subjno, bno, bdatno);
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
