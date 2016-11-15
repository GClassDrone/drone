package com.gclass.drone.category.dao;

import java.util.List;
import java.util.Map;

import com.gclass.drone.category.dto.CateDto;

public interface CateDao {
	public List<CateDto> ctsCateList(Map<String, Object> map) throws Exception;
}
