package com.gclass.drone.category.service;

import java.util.List;

import com.gclass.drone.category.dto.CateDto;
import com.gclass.drone.category.dto.CatePageDto;

public interface CateService {
	public List<CateDto> ctsCateList(CatePageDto cpDto) throws Exception;
}
