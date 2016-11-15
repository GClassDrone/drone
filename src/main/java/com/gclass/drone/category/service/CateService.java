package com.gclass.drone.category.service;

import java.util.List;

import com.gclass.drone.category.dto.CateDto;

public interface CateService {
	public List<CateDto> ctsCateList(int[] cateArray) throws Exception;
}
