package com.gclass.drone.bdat.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.gclass.drone.bdat.dto.bdatDto;
import com.gclass.drone.bdat.service.bdatService;

@RestController
@RequestMapping("/bdat")
public class BdatController {

	@Inject
	private bdatService service;

	@RequestMapping(value = "/{subjno}/{bno}/{bdatno}", method = RequestMethod.POST)
	public ResponseEntity<String> register(@PathVariable("bno") Integer bno, @PathVariable("subjno") Integer subjno) {

		ResponseEntity<String> entity = null;
		try {
			service.addbdat(bno, subjno);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

	@RequestMapping(value = "/all/{subjno}/{bno}", method = RequestMethod.GET)
	public ResponseEntity<List<bdatDto>> list(@PathVariable("bno") Integer bno, @PathVariable("subjno") Integer subjno) {

		ResponseEntity<List<bdatDto>> entity = null;
		try {
			entity = new ResponseEntity<>(service.bdatlist(bno, subjno), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value="/{subjno}/{bno}/{bdatno}", method = {RequestMethod.PUT, RequestMethod.PATCH})
	public ResponseEntity<String> update(
			@PathVariable("bno") Integer bno, @PathVariable("subjno") Integer subjno, @PathVariable("bdatno") Integer bdatno,
			@RequestBody bdatDto dto) {
		
		ResponseEntity<String> entity = null;
		try {
			dto.setBdatno(bdatno);
			service.modifybdat(bno, subjno, bdatno);
			
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
