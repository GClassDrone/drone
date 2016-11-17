package com.gclass.drone.bdat.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.gclass.drone.bdat.dto.bdatDto;
import com.gclass.drone.bdat.service.bdatService;

@RestController
@RequestMapping("/bdat")
public class BdatController {

	private static final Logger logger = LoggerFactory.getLogger(BdatController.class);
	
	@Inject
	private bdatService service;

	@RequestMapping(value = "/{subjno}/{bno}", method = RequestMethod.POST)
	public ResponseEntity<String> register(@RequestBody bdatDto dto, @PathVariable("bno") Integer bno, @PathVariable("subjno") Integer subjno) {
		
		ResponseEntity<String> entity = null;
		try {
			service.addbdat(dto);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

	@RequestMapping(value = "/all/{subjno}/{bno}", method = RequestMethod.GET)
	public ResponseEntity<List<bdatDto>> list(@PathVariable("bno") Integer bno, @PathVariable("subjno") Integer subjno) {

		logger.info(bno + " " + subjno);
		ResponseEntity<List<bdatDto>> entity = null;
		try {
			entity = new ResponseEntity<List<bdatDto>>(service.bdatlist(subjno, bno), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		logger.info(entity.toString());
		return entity;
	}
	
	@RequestMapping(value="/{subjno}/{bno}/{bdatno}", method = {RequestMethod.PUT, RequestMethod.PATCH})
	public ResponseEntity<String> update(
			@PathVariable("bno") Integer bno, @PathVariable("subjno") Integer subjno, @PathVariable("bdatno") Integer bdatno,
			@RequestBody bdatDto dto) {
		System.out.println("============================================================"+bno+","+subjno+","+bdatno+","+dto);
		ResponseEntity<String> entity = null;
		try {
			dto.setBdatno(bdatno);
			dto.setBno(bno);
			dto.setSubjno(subjno);
			System.out.println("========asdasdsadsadsdadasads dtoget"+dto.getBdatno());
			service.modifybdat(dto);
			
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		}catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(
					e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	
	@RequestMapping(value="/{subjno}/{bno}/{bdatno}", method = {RequestMethod.DELETE})
	public ResponseEntity<String> remove(
			@PathVariable("bno") Integer bno, @PathVariable("subjno") Integer subjno,@PathVariable("bdatno") Integer bdatno) {
		
		ResponseEntity<String> entity = null;
		try {
			service.removebdat(bno, subjno, bdatno);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		}catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(
					e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

}
