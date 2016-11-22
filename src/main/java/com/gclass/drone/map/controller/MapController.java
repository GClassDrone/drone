package com.gclass.drone.map.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gclass.drone.map.dto.CtsDto;
import com.gclass.drone.map.dto.CtsdatDto;
import com.gclass.drone.map.dto.FavDto;
import com.gclass.drone.map.dto.MemViewDto;
import com.gclass.drone.map.service.MapService;

@Controller
@RequestMapping("/map")
public class MapController {
	@Inject
	private MapService service;
	
	private static final Logger logger = LoggerFactory.getLogger(MapController.class);
	
	@RequestMapping(value="/map", method=RequestMethod.GET)
	public void mapGet(){
	}
	
	@RequestMapping(value="/ctsInsert", method=RequestMethod.GET)
	public void ctsInsert(Model model) throws Exception{
		logger.info("CtsInsert GET");
		model.addAttribute("ctscateList", service.ctscateSelectAll());
	}
	
	@RequestMapping(value="/ctsInsert", method=RequestMethod.POST)
	public String ctsInsert(CtsDto cDto) throws Exception{
		logger.info("ctsInsert POST");
		logger.info(cDto.toString());
		service.ctsInsert(cDto);
		
		return "redirect:/mem/ProfileDetail?mno="+cDto.getMno();
	}
	
	@RequestMapping(value="/ctsUpdate", method=RequestMethod.GET)
	public void ctsUpdate(CtsDto cDto, Model model) throws Exception{
		model.addAttribute("cDto", service.ctstagSelectOne(cDto));
		logger.info(service.ctstagSelectOne(cDto).toString());
		model.addAttribute("ctscateList", service.ctscateSelectAll());
	}
	
	@RequestMapping(value="/ctsUpdate", method=RequestMethod.POST)
	public String ctsUpdate(CtsDto cDto) throws Exception{
		logger.info("ctsUpdate POST");
		logger.info(cDto.toString());
		service.ctsUpdate(cDto);
		
		return "redirect:/mem/ProfileDetail?mno="+cDto.getMno();
	}
	
	@ResponseBody
	@RequestMapping(value="/ctsDelete", method=RequestMethod.POST)
	public ResponseEntity<HttpStatus> ctsDelete(@RequestBody CtsDto cDto){
		ResponseEntity<HttpStatus> entity = null;
		logger.info("ctsDelete Delete");
		try{
			service.ctsDelete(cDto);
			entity = new ResponseEntity<HttpStatus>(HttpStatus.OK);
		}catch(Exception e){
			entity = new ResponseEntity<HttpStatus>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@ResponseBody
	@RequestMapping(value="/videoList", method=RequestMethod.POST)
	public ResponseEntity<List<CtsDto>> mapPost(){
		ResponseEntity<List<CtsDto>> entity = null;
		try{
			entity = new ResponseEntity<List<CtsDto>>(service.ctsSelectAll(),HttpStatus.OK);
		}catch(Exception e){
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@ResponseBody
	@RequestMapping(value="/videoDetail", method=RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> videoDetail(@RequestBody CtsDto cDto){
		ResponseEntity<Map<String, Object>> entity = null;
		try{
			entity = new ResponseEntity<Map<String, Object>>(service.modalInit(cDto), HttpStatus.OK);
		}catch(Exception e){
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@ResponseBody
	@RequestMapping(value="/pilotList", method=RequestMethod.POST)
	public ResponseEntity<List<MemViewDto>> pilotList(){
		ResponseEntity<List<MemViewDto>> entity = null;
		try{
			entity = new ResponseEntity<List<MemViewDto>>(service.memSelectAll(),HttpStatus.OK);
		}catch(Exception e){
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@ResponseBody
	@RequestMapping(value="/hotclipVideo",method=RequestMethod.POST)
	public ResponseEntity<List<CtsDto>> hotclipVideo(){
		ResponseEntity<List<CtsDto>> entity = null;
		try{
			entity = new ResponseEntity<List<CtsDto>>(service.hotclipVideo(), HttpStatus.OK);
		}catch(Exception e){
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@ResponseBody
	@RequestMapping(value="/hotclipPilot",method=RequestMethod.POST)
	public ResponseEntity<List<MemViewDto>> hotclipPilot(){
		ResponseEntity<List<MemViewDto>> entity = null;
		try{
			entity = new ResponseEntity<List<MemViewDto>>(service.hotclipPilot(), HttpStatus.OK);
		}catch(Exception e){
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@ResponseBody
	@RequestMapping(value="/favInsert", method=RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> favInsert(@RequestBody FavDto fDto){
		ResponseEntity<Map<String, Object>> entity = null;
		logger.info("Insert : " + fDto.toString());
		try{
			entity = new ResponseEntity<Map<String, Object>>(service.favInsert(fDto),HttpStatus.OK);
		}catch(Exception e){
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	@ResponseBody
	@RequestMapping(value="/favDelete", method=RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> favDelete(@RequestBody FavDto fDto){
		logger.info("Delete : " + fDto.toString());
		ResponseEntity<Map<String, Object>> entity = null;
		try{
			entity = new ResponseEntity<Map<String, Object>>(service.favUpdate(fDto),HttpStatus.OK);
		}catch(Exception e){
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@ResponseBody
	@RequestMapping(value="/ctsdatInsert", method=RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> ctsdatInsert(@RequestBody CtsdatDto cdDto){
		ResponseEntity<Map<String, Object>> entity = null;
		try{
			entity = new ResponseEntity<Map<String, Object>>(service.ctsdatInsert(cdDto),HttpStatus.OK);
		}catch(Exception e){
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@ResponseBody
	@RequestMapping(value="/ctsdatUpdate", method=RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> ctsdatUpdate(@RequestBody CtsdatDto cdDto){
		ResponseEntity<Map<String, Object>> entity = null;
		try{
			entity = new ResponseEntity<Map<String, Object>>(service.ctsdatUpdate(cdDto),HttpStatus.OK);
		}catch(Exception e){
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@ResponseBody
	@RequestMapping(value="/ctsdatDelete", method=RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> ctsdatDelete(@RequestBody CtsdatDto cdDto){
		ResponseEntity<Map<String, Object>> entity = null;
		try{
			entity = new ResponseEntity<Map<String, Object>>(service.ctsdatDelete(cdDto),HttpStatus.OK);
		}catch(Exception e){
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
// 주소 좌표 등록	
//	@ResponseBody
//	@RequestMapping(value="/addrlist", method=RequestMethod.POST)
//	public ResponseEntity<List<LocDto>> addrlist(){
//		ResponseEntity<List<LocDto>> entity = null;
//		try{
//			entity = new ResponseEntity<List<LocDto>>(service.addrlist(), HttpStatus.OK);
//		}catch(Exception e){
//			e.printStackTrace();
//			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
//		}
//		return entity;
//	}
//	
//	@ResponseBody
//	@RequestMapping(value="/addrupdate", method=RequestMethod.POST)
//	public ResponseEntity<String> addrupdate(@RequestBody LocDto lDto){
//		ResponseEntity<String> entity = null;
//		try{
//			logger.info(lDto.toString());
//			service.addrupdate(lDto);
//			entity = new ResponseEntity<>(HttpStatus.OK);
//		}catch(Exception e){
//			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
//		}
//		return entity;
//	}
}
