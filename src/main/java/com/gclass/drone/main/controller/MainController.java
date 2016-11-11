package com.gclass.drone.main.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gclass.drone.map.service.MapService;

@Controller
public class MainController {
	@Inject
	private MapService service;
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

<<<<<<< HEAD
=======

	@RequestMapping("/imsi")
	public void imsi() {
		
	}
	

>>>>>>> a40c64397b6407e130caa86a32f2a251d214efb8
	@RequestMapping("/board")
	public void board() {
		
	}
	
	@RequestMapping("/boardGroupList")
	public void boardGroupList() {
		
	}
	
	@RequestMapping("/boardSubList")
	public void boardSubList() {
		
	}
	
	@RequestMapping("/info")
	public void info() {
		
	}
	
	@RequestMapping("/infoDetail")
	public void infoDetail() {
		
	}
	
	@RequestMapping("/infoForm")
	public void infoForm() {
		
	}
	
	@RequestMapping("/pilot")
	public void pilot() {
		
	}
	
	@RequestMapping("/teamMember")
	public void teamMember() {
		
	}
	
	
/*	@RequestMapping(value="/map", method=RequestMethod.GET)
	public void mapGet(){
	}*/
	
	
/*	@ResponseBody
	@RequestMapping(value="/map", method=RequestMethod.POST)
	public ResponseEntity<List<CtsDto>> mapPost(){
		ResponseEntity<List<CtsDto>> entity = null;
		try{
			entity = new ResponseEntity<List<CtsDto>>(service.ctsSelectAll(),HttpStatus.OK);
		}catch(Exception e){
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}*/
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
