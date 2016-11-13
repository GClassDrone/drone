package com.gclass.drone.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.gclass.drone.board.dao.BoardDao;
import com.gclass.drone.board.dto.AttachDto;
import com.gclass.drone.board.dto.BoardDto;
import com.gclass.drone.board.dto.BsubjDto;
import com.gclass.drone.board.dto.InitSearchPage;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDao bDao;
	
	@Transactional
	@Override
	public void insert(BoardDto bDto) throws Exception {
		bDao.insert(bDto);
		
////		업로드부분 추가
//		String[] files = bDto.getFiles();
//		
//		if(files == null){ return;}
//
//		for(String fileName : files){
//			bDao.addAttach(fileName);
//		}
	}

	@Transactional
	@Override
	public void update(BoardDto bDto) throws Exception {
//		bDao.update(bDto);
//		Integer  = bDto.getNum();
//		
//		bDao.deleteAllAttach();
//		
//		String[] files = bDto.getFiles();
//		
//		if(files == null){ return; }
//		
//		for(String fileName : files){
//			bDao.replaceAttach(fileName);
//		}
	}

	@Transactional
	@Override
	public void delete(Integer subjno, int bno) throws Exception {
//		upload 추가된 부분
		bDao.deleteAllAttach(bno);
		bDao.delete(subjno,bno);
	}

	@Transactional(isolation=Isolation.READ_COMMITTED)
	@Override
	public BoardDto read(Integer bno, int subjno) throws Exception {
		bDao.readCountUp(bno);
		return bDao.read(bno,subjno);
	}

	@Override
	public List<BoardDto> listAll() throws Exception {
		return bDao.listAll();
	}

	@Override
	public int totalRow(InitSearchPage isp) throws Exception {
		return bDao.totalRow(isp);
	}

	@Override
	public List<String> getAttach(Integer num) throws Exception {
		return bDao.getAttach(num);
	}

	@Override
	public void deleteOneAttach(AttachDto attachDto) throws Exception {
		bDao.deleteOneAttach(attachDto);
	}

	@Override
	public List<BsubjDto> sublistAll() throws Exception {
		return bDao.sublistAll();
	}
}
