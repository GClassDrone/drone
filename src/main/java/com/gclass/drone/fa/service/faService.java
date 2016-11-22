package com.gclass.drone.fa.service;

import java.util.List;

import com.gclass.drone.fa.dto.faDto;
import com.gclass.drone.mem.dto.faCatePageDto;

public interface faService {

	public void modify(faDto dto) throws Exception;

	public void remove(Integer mno, Integer fno) throws Exception;

	public List<faDto> falist(faCatePageDto cpDto) throws Exception;
}