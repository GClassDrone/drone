package com.gclass.drone.mem.dao;

import java.util.List;

import com.gclass.drone.mem.dto.MemDto;

public interface MemDao {
	
	public MemDto read(Integer mno) throws Exception;
	
	public void update(MemDto dto) throws Exception;
	
	public void delete(Integer mno) throws Exception;
	
	//로그인
	public MemDto login(String siteid, String siteno)throws Exception;
	
	public List<MemDto> listAll()throws Exception;

	public void insert(MemDto dto) throws Exception;
	
	public int dulogin(String niknm)throws Exception;
	
  //프로필에서 내가 개설한 게시판 리스트 뿌려주기
	
	public List<MemDto> mylist(Integer mno) throws Exception;
	
	public void binsert(MemDto dto) throws Exception;

}
