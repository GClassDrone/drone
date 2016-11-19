package com.gclass.drone.iboard.service;

import java.util.List;

import com.gclass.drone.board.dto.BsubjDto;
import com.gclass.drone.common.InitSearchPage;
import com.gclass.drone.iboard.dto.IBoardDto;

public interface IBoardService {

	public void regist(IBoardDto board) throws Exception;

	public IBoardDto read(Integer bno, Integer subjno) throws Exception;

	public void modify(IBoardDto board) throws Exception;

	public void remove(Integer bno, Integer subjno) throws Exception;

	public List<IBoardDto> listAll(Integer subjno, InitSearchPage isp) throws Exception;

	public BsubjDto listheader(Integer subjno) throws Exception;
	
	public int totalRow(Integer subjno, InitSearchPage isp) throws Exception;
}