package com.gclass.drone.map.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.gclass.drone.map.dto.CtsDto;
import com.gclass.drone.map.dto.CtscateDto;
import com.gclass.drone.map.dto.CtsdatDto;
import com.gclass.drone.map.dto.CtstagDto;
import com.gclass.drone.map.dto.FavDto;
import com.gclass.drone.map.dto.LocDto;
import com.gclass.drone.map.dto.MemViewDto;

@Repository
public class MapDaoImpl implements MapDao {

	private static final String namespace = "com.gclass.drone.map.mapper";
	
	private static final Logger logger = LoggerFactory.getLogger(MapDaoImpl.class);
	
	@Inject
	private SqlSession session;
	
	@Override
	public List<LocDto> addrlist() throws Exception {
		return session.selectList(namespace+".addrlist");
	}
	
	@Override
	public void addrupdate(LocDto lDto) throws Exception {
		session.update(namespace+".addrupdate", lDto);
	}
	
	@Override
	public List<CtsDto> ctsSelectAll() throws Exception {
		return session.selectList(namespace+".ctsSelectAll");
	}

	@Override
	public CtsDto ctsSelectOne(CtsDto cDto) throws Exception {
		return session.selectOne(namespace+".ctsSelectOne", cDto);
	}

	@Override
	public void ctsUpdateReadcnt(CtsDto cDto) throws Exception {
		session.update(namespace+".ctsUpdateReadcnt", cDto);
	}

	@Override
	public List<MemViewDto> memSelectAll() throws Exception{
		return session.selectList(namespace+".memSelectAll");
	}

	@Override
	public List<CtsDto> hotclipVideo() throws Exception {
		return session.selectList(namespace+".hotclipVideo");
	}

	@Override
	public List<MemViewDto> hotclipPilot() throws Exception {
		return session.selectList(namespace+".hotclipPilot");
	}

	@Override
	public int ctsInsert(CtsDto cDto) throws Exception {
		session.insert(namespace+".ctsInsert", cDto);
		return cDto.getCtsno();
	}
	
	@Override
	public void ctstagInsert(CtstagDto ctDto) throws Exception {
		session.insert(namespace+".ctstagInsert",ctDto);
	}
	
	@Override
	public void ctstagDelete(CtstagDto ctDto) throws Exception {
		session.delete(namespace+".ctstagDelete", ctDto);
	}

	@Override
	public List<CtscateDto> ctscateSelectAll() throws Exception {
		return session.selectList(namespace+".ctscateSelectAll");
	}
	
	@Override
	public CtsDto ctstagSelectOne(CtsDto cDto) throws Exception {
		return session.selectOne(namespace+".ctstagSelectOne", cDto);
	}

	@Override
	public void ctsUpdate(CtsDto cDto) throws Exception {
		session.update(namespace+".ctsUpdate", cDto);
	}

	@Override
	public void ctsDelete(CtsDto cDto) throws Exception {
		session.update(namespace+".ctsDelete", cDto);
	}

	@Override
	public void favInsert(FavDto fDto) throws Exception {
		session.insert(namespace+".favInsert", fDto);
	}

	@Override
	public List<FavDto> favCheck(CtsDto cDto) throws Exception {
		return session.selectList(namespace+".favCheck", cDto);
	}
	
	@Override
	public List<FavDto> favCheck(FavDto fDto) throws Exception {
		return session.selectList(namespace+".favCheck", fDto);
	}

	@Override
	public void favUpdate(FavDto fDto) throws Exception {
		session.update(namespace+".favUpdate", fDto);
	}

	@Override
	public List<FavDto> favSelectList(FavDto fDto) throws Exception {
		return session.selectList(namespace+".favSelectList", fDto);
	}

	@Override
	public FavDto ctsCntSelectOne(FavDto fDto) throws Exception {
		return session.selectOne(namespace+".ctsCntSelectOne", fDto);
	}
	
	@Override
	public List<CtsdatDto> ctsdatSelectAll(CtsDto cDto) throws Exception {
		return session.selectList(namespace+".ctsdatSelectAll", cDto);
	}
	
	@Override
	public List<CtsdatDto> ctsdatSelectAll(CtsdatDto cdDto) throws Exception {
		return session.selectList(namespace+".ctsdatSelectAll", cdDto);
	}

	@Override
	public void ctsdatInsert(CtsdatDto cdDto) throws Exception {
		session.insert(namespace+".ctsdatInsert", cdDto);
	}

	@Override
	public void ctsdatUpdate(CtsdatDto cdDto) throws Exception {
		session.update(namespace+".ctsdatUpdate", cdDto);
	}

	@Override
	public void ctsdatDelete(CtsdatDto cdDto) throws Exception {
		session.delete(namespace+".ctsdatDelete", cdDto);
	}

	@Override
	public int ctsdatcntSelectOne(CtsdatDto cdDto) throws Exception {
		return session.selectOne(namespace+".ctsdatcntSelectOne", cdDto);
	}

}
