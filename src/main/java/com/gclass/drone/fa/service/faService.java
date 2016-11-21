package com.gclass.drone.fa.service;

import java.util.List;

import com.gclass.drone.fa.dto.faDto;

public interface faService {

	public void modify(faDto dto) throws Exception;

	public void remove(Integer mno, Integer fno) throws Exception;

	public List<faDto> falist(Integer mno) throws Exception;
}