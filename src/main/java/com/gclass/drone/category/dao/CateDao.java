package com.gclass.drone.category.dao;

import java.util.List;

import com.gclass.drone.category.dto.CateDto;

public interface CateDao {
	public List<CateDto> ctsCateList(int[] cateArray) throws Exception;
}
