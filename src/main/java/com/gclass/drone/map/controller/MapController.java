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
import org.springframework.web.bind.annotation.ResponseBody;

import com.gclass.drone.map.dto.CtsDto;
import com.gclass.drone.map.dto.LocArrayDto;
import com.gclass.drone.map.dto.LocDto;
import com.gclass.drone.map.service.MapService;

@Controller
public class MapController {
	@Inject
	private MapService service;
	
	private static final Logger logger = LoggerFactory.getLogger(MapController.class);
	
	@RequestMapping(value="/map", method=RequestMethod.GET)
	public void mapGet(){
	}
	
	@ResponseBody
	@RequestMapping(value="/map", method=RequestMethod.POST)
	public ResponseEntity<List<CtsDto>> mapPost(){
		ResponseEntity<List<CtsDto>> entity = null;
		try{
			entity = new ResponseEntity<List<CtsDto>>(service.ctsSelectAll(),HttpStatus.OK);
		}catch(Exception e){
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
// 주소 좌표 등록	
	@ResponseBody
	@RequestMapping(value="/addrlist", method=RequestMethod.POST)
	public ResponseEntity<List<LocDto>> addrlist(){
		ResponseEntity<List<LocDto>> entity = null;
		try{
			entity = new ResponseEntity<List<LocDto>>(service.addrlist(), HttpStatus.OK);
		}catch(Exception e){
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@ResponseBody
	@RequestMapping(value="/addrupdate", method=RequestMethod.POST)
	public ResponseEntity<String> addrupdate(@RequestBody LocDto lDto){
		ResponseEntity<String> entity = null;
		try{
			logger.info(lDto.toString());
			service.addrupdate(lDto);
			entity = new ResponseEntity<>(HttpStatus.OK);
		}catch(Exception e){
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
}
