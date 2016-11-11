package com.gclass.drone.board.dao;

import java.util.List;

import com.gclass.drone.board.dto.AttachDto;
import com.gclass.drone.board.dto.BoardDto;
import com.gclass.drone.board.dto.BsubjDto;
import com.gclass.drone.board.dto.InitSearchPage;

public interface BoardDao {
	public void insert(BoardDto bDto) throws Exception;
	public void update(BoardDto bDto) throws Exception;
	public void delete(Integer bno, int subjno)  throws Exception;
	public BoardDto read(Integer bno, int subjno)  throws Exception;
	public List<BoardDto> listAll() throws Exception;
	public List<BsubjDto> sublistAll()  throws Exception;
	public int totalRow(InitSearchPage isp) throws Exception;
	public void readCountUp(Integer bno)  throws Exception;
	public void updateReplyCnt(Integer bno, int cnt) throws Exception;
	
	/*파일업로드부분*/
	public void addAttach(String fullname) throws Exception;
	public List<String> getAttach(Integer num) throws Exception;
	public void deleteAllAttach(Integer num) throws Exception;
	public void replaceAttach(String fullName, Integer num) throws Exception;
	public void deleteOneAttach(AttachDto attachDto) throws Exception;
}
