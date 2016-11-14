package com.gclass.drone.board.service;

import java.util.List;

import com.gclass.drone.board.dto.BsubjDto;

public interface BsubjService {
	
	public void insert(BsubjDto bDto) throws Exception;
	public void update(BsubjDto bDto) throws Exception;
	public void delete(Integer subjno)  throws Exception;
	public BsubjDto read(Integer subjno)  throws Exception;
	public List<BsubjDto> sublistAll(Integer bcateno)  throws Exception;
}
