package com.gclass.drone.dat.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gclass.drone.dat.dao.bdatDao;
import com.gclass.drone.dat.dto.bdatDto;

@Service
public class bdatServiceImpl implements bdatService {

	@Inject
	private bdatDao bdatdao;
	
	@Transactional
	@Override
	public void addReply(bdatDto dto) throws Exception {

		bdatdao.create(dto);
	}

	
	@Override
	public List<bdatDto> listReply(Integer bno) throws Exception {
		
		return bdatdao.list(bno);
	}

	@Override
	public void modifyReply(bdatDto dto) throws Exception {

		bdatdao.update(dto);
	}

	@Override
	public int count(Integer bno) throws Exception {
		return bdatdao.count(bno);
	}
	
	
/*수정하기*/
	@Override
	public void removeReply(Integer rno) throws Exception {
	}

}
