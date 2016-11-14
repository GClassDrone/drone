package com.gclass.drone.map.controller;

import java.util.List;

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
import com.gclass.drone.map.dto.CtscateDto;
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
	public void ctsInsert(CtsDto cDto, Model model) throws Exception{
		logger.info("CtsInsert GET");
	}
	
	@RequestMapping(value="/ctsInsert", method=RequestMethod.POST)
	public String ctsInsert(CtsDto cDto) throws Exception{
		logger.info("ctsInsert POST");
		logger.info(cDto.toString());
		service.ctsInsert(cDto);
		
		return "redirect:/map/map";
	}
	
	@RequestMapping(value="/ctsUpdate", method=RequestMethod.GET)
	public void ctsUpdate(CtsDto cDto, Model model){
		logger.info("CtsUpdate GET");
	}
	
	@RequestMapping(value="/ctsUpdate", method=RequestMethod.POST)
	public String ctsUpdate(CtsDto cDto) throws Exception{
		logger.info("ctsUpdate POST");
		logger.info(cDto.toString());
		service.ctsUpdate(cDto);
		
		return "redirect:/map/map";
	}
	
	@RequestMapping(value="/ctsDelete", method=RequestMethod.DELETE)
	public String ctsDelete(@RequestParam int ctsno, @RequestParam int ctscateno) throws Exception{
		logger.info("ctsDelete Delete");
		logger.info("ctsno : "+ctsno+", ctscateno : " + ctscateno);
		service.ctsDelete(ctsno, ctscateno);
		
		return "redirect:/map/map";
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
	public ResponseEntity<CtsDto> videoDetail(@RequestBody CtsDto cDto){
		ResponseEntity<CtsDto> entity = null;
		try{
			entity = new ResponseEntity<CtsDto>(service.ctsSelectOne(cDto), HttpStatus.OK);
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
	@RequestMapping(value="/ctscateSelect", method=RequestMethod.POST)
	public ResponseEntity<List<CtscateDto>> ctscateSelect(){
		ResponseEntity<List<CtscateDto>> entity = null;
		try{
			entity = new ResponseEntity<List<CtscateDto>>(service.ctscateSelectAll(), HttpStatus.OK);
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
