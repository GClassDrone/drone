package com.gclass.drone.mem.dao;

<<<<<<< HEAD
import com.gclass.drone.login.dto.LoginDto;
=======
import java.util.List;

>>>>>>> a40c64397b6407e130caa86a32f2a251d214efb8
import com.gclass.drone.mem.dto.MemDto;

public interface MemDao {
	
	public void create(MemDto Dto) throws Exception;
	
	public MemDto read(Integer mno) throws Exception;
	
	public void update(MemDto dto) throws Exception;
	
	public void delete(Integer mno) throws Exception;
	
<<<<<<< HEAD
	//로그인
	public MemDto login(String siteid, String siteno)throws Exception;
	
=======
	public List<MemDto> listAll()throws Exception;
>>>>>>> a40c64397b6407e130caa86a32f2a251d214efb8
}
