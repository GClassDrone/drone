package com.gclass.drone.mem.service;

import java.util.List;

import com.gclass.drone.category.dto.CateDto;
import com.gclass.drone.mem.dto.MemDto;
import com.gclass.drone.mem.dto.MnoCatePageDto;
import com.gclass.drone.mem.dto.MnoPageDto;

public interface MemService {
	
	public MemDto read(Integer mno) throws Exception;
	public void modify(MemDto board) throws Exception;
	public void remove(Integer mno) throws Exception;
	public List<MemDto> listAll() throws Exception;
	
	/*프로필에서 게시판  뽑는부분 */
	public List<MemDto> mylist(Integer mno) throws Exception;
	public void binsert(MemDto bDto) throws Exception;
	
	
	//로그인
	public MemDto login(String siteid, String siteno)throws Exception;
	public void regist(MemDto dto)throws Exception;
	public int dulogin(String niknm)throws Exception;
	
	//프로필에서 콘텐츠 불러오는 부분
	public List<CateDto> conlist(MnoCatePageDto cpDto) throws Exception;
	
	//프로필에서 멤버 리스트 페이징하기
	public List<MemDto> memlist(MnoPageDto cpDto) throws Exception;
}
