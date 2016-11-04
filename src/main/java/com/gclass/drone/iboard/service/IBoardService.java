package com.gclass.drone.iboard.service;

import com.gclass.drone.iboard.dto.IBoardDto;


public interface IBoardService {

	  public void regist(IBoardDto board) throws Exception;

	  public IBoardDto read(Integer bno) throws Exception;

	  public void modify(IBoardDto board) throws Exception;

	  public void remove(Integer bno) throws Exception;

	}