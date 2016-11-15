package com.gclass.drone.category.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.gclass.drone.category.dao.CateDao;
import com.gclass.drone.category.dto.CateDto;

@Service
public class CateServiceImpl implements CateService {
	
	private static final Logger logger = LoggerFactory.getLogger(CateServiceImpl.class);
	
	@Inject
	private CateDao cDao;

	@Override
	public List<CateDto> ctsCateList(int[] cateArray) throws Exception {
		return cDao.ctsCateList(cateArray);
	}
}
