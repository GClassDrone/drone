package com.gclass.drone.category.dao;

import java.util.List;

import com.gclass.drone.category.dto.CateDto;
import com.gclass.drone.category.dto.CatePageDto;

public interface CateDao {
	public List<CateDto> ctsCateList(CatePageDto cpDto) throws Exception;
	public int ctsCateTotalRow(CatePageDto cpDto) throws Exception;
}
