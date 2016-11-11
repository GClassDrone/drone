package com.gclass.drone.board.service;

import java.util.List;

import com.gclass.drone.board.dto.AttachDto;
import com.gclass.drone.board.dto.BoardDto;
import com.gclass.drone.board.dto.BsubjDto;
import com.gclass.drone.board.dto.InitSearchPage;

public interface BoardService {
	public void insert(BoardDto bDto) throws Exception;
	public void update(BoardDto bDto) throws Exception;
	public void delete(Integer bno, int subjno)  throws Exception;
	public BoardDto read(Integer bno, int subjno)  throws Exception;
	public List<BoardDto> listAll()  throws Exception;
	public List<BsubjDto> sublistAll()  throws Exception;
	public int totalRow(InitSearchPage isp) throws Exception;
	
	public List<String> getAttach(Integer bno) throws Exception;
	public void deleteOneAttach(AttachDto attachDto) throws Exception;
}
