package com.gclass.drone.map.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.gclass.drone.map.dao.MapDao;
import com.gclass.drone.map.dto.CtsDto;
import com.gclass.drone.map.dto.CtscateDto;
import com.gclass.drone.map.dto.CtsdatDto;
import com.gclass.drone.map.dto.CtstagDto;
import com.gclass.drone.map.dto.FavDto;
import com.gclass.drone.map.dto.LocDto;
import com.gclass.drone.map.dto.MemViewDto;

@Service
public class MapServiceImpl implements MapService {
	
	@Inject
	private MapDao mDao;
	
	private static final Logger logger = LoggerFactory.getLogger(MapServiceImpl.class);
	
	@Override
	public List<LocDto> addrlist() throws Exception {
		return mDao.addrlist();
	}
	
	@Override
	public void addrupdate(LocDto lDto) throws Exception {
		mDao.addrupdate(lDto);
	}
	
	@Override
	public List<CtsDto> ctsSelectAll() throws Exception {
		return mDao.ctsSelectAll();
	}

	@Override
	public Map<String, Object> modalInit(CtsDto cDto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		mDao.ctsUpdateReadcnt(cDto);
		returnMap.put("cDto",mDao.ctsSelectOne(cDto));
		returnMap.put("cdList",mDao.ctsdatSelectAll(cDto));
		returnMap.put("favCheck",mDao.favCheck(cDto));
		return returnMap;
	}

	@Override
	public List<MemViewDto> memSelectAll() throws Exception {
		return mDao.memSelectAll();
	}

	@Override
	public List<CtsDto> hotclipVideo() throws Exception {
		return mDao.hotclipVideo();
	}

	@Override
	public List<MemViewDto> hotclipPilot() throws Exception {
		return mDao.hotclipPilot();
	}

	@Transactional
	@Override
	public void ctsInsert(CtsDto cDto,String ctstagnm) throws Exception {
		CtstagDto ctDto = new CtstagDto();
		Pattern p = Pattern.compile("\\#([0-9a-zA-Z가-힁]*)");
		Matcher m = p.matcher(ctstagnm);
		String tag = null;
		
		ctDto.setCtscateno(cDto.getCtscateno());
		
		Map<String, Object> mapctsno = new HashMap<String, Object>();
		mapctsno.put("ctscateno", cDto.getCtscateno());
		mapctsno.put("mno", cDto.getMno());
		ctDto.setCtsno(mDao.ctsInsert(cDto));
		
		while(m.find()){
			tag = m.group();
			tag = StringUtils.replace(tag,"-_+=!@#$%^&*()[]{}|\\;:'\"<>,.?/~`） ","");
			logger.info(tag);
			if(tag.length() > 1){
				ctDto.setTagnm(tag);
				mDao.ctstagInsert(ctDto);
			}
		}
	}

	@Override
	public List<CtscateDto> ctscateSelectAll() throws Exception {
		return mDao.ctscateSelectAll();
	}

	@Override
	public void ctsUpdate(CtsDto cDto) throws Exception {
		mDao.ctsUpdate(cDto);
	}

	@Override
	public void ctsDelete(int ctsno, int ctscateno) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ctsno", ctsno);
		map.put("ctscateno", ctscateno);
		
		mDao.ctsDelete(map);
	}

	@Override
	public Map<String, Object> favInsert(FavDto fDto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		if(mDao.favSelectOne(fDto).size() == 0 && fDto.getCheck().equals("n")){
			mDao.favInsert(fDto);
			returnMap.put("msg", returnStr(fDto.getFgubun(),"Insert"));
			logger.info(fDto.toString());
			returnMap.put("cnt", mDao.ctsCntSelectOne(fDto));
			logger.info(returnMap.get("cnt").toString());
		}else{
			returnMap.put("msg", returnStr(fDto.getFgubun(),"Failed"));
		}
		return returnMap;
	}

	@Override
	public Map<String, Object> favDelete(FavDto fDto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		if(mDao.favSelectOne(fDto).size() == 1 && fDto.getCheck().equals("y")){
			mDao.favDelete(fDto);
			returnMap.put("msg", returnStr(fDto.getFgubun(),"Delete"));
			returnMap.put("cnt", mDao.ctsCntSelectOne(fDto));
		}else{
			returnMap.put("msg", returnStr(fDto.getFgubun(),"Failed"));
		}
		return returnMap;
	}
	
	private String returnStr(String fgubun, String query){
		String str="";
		if(fgubun.equals("f") || fgubun=="f"){  
			str = "fav"+query;
		}else{
			str = "joa"+query;
		}
		return str;
	}

	@Override
	public Map<String, Object> ctsdatInsert(CtsdatDto cdDto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		mDao.ctsdatInsert(cdDto);
		returnMap.put("list", mDao.ctsdatSelectAll(cdDto));
		returnMap.put("cnt", mDao.ctsdatcntSelectOne(cdDto));
		return returnMap;
	}

	@Override
	public Map<String, Object> ctsdatUpdate(CtsdatDto cdDto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		mDao.ctsdatUpdate(cdDto);
		returnMap.put("list", mDao.ctsdatSelectAll(cdDto));
		returnMap.put("cnt", mDao.ctsdatcntSelectOne(cdDto));
		return returnMap;
	}

	@Override
	public Map<String, Object> ctsdatDelete(CtsdatDto cdDto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		mDao.ctsdatDelete(cdDto);
		returnMap.put("list", mDao.ctsdatSelectAll(cdDto));
		returnMap.put("cnt", mDao.ctsdatcntSelectOne(cdDto));
		return returnMap;
	}
}
