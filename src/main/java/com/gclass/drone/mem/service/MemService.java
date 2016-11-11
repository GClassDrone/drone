package com.gclass.drone.mem.service;

<<<<<<< HEAD
import com.gclass.drone.login.dto.LoginDto;
=======
import java.util.List;

>>>>>>> a40c64397b6407e130caa86a32f2a251d214efb8
import com.gclass.drone.mem.dto.MemDto;

public interface MemService {
	
	public void regist(MemDto board) throws Exception;
	public MemDto read(Integer mno) throws Exception;
	public void modify(MemDto board) throws Exception;
	public void remove(Integer mno) throws Exception;
<<<<<<< HEAD
	
	//로그인
	public MemDto login(String siteid, String siteno)throws Exception;
=======
	public List<MemDto> listAll() throws Exception;
>>>>>>> a40c64397b6407e130caa86a32f2a251d214efb8
}
