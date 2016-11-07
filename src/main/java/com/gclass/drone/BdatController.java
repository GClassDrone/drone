package com.gclass.drone;

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
@RequestMapping("/boarddat")
public class BdatController {

	@Inject
	private bdatService service;

	@RequestMapping(value = "", method = RequestMethod.POST)
	public ResponseEntity<String> register(@RequestBody bdatDto dto) {

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

	@RequestMapping(value = "/all/{bno}", method = RequestMethod.GET)
	public ResponseEntity<List<bdatDto>> list(@PathVariable("bno") Integer bno) {

		ResponseEntity<List<bdatDto>> entity = null;
		try {
			entity = new ResponseEntity<>(service.listbdat(bno), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value="/{bdatno}", method = {RequestMethod.PUT, RequestMethod.PATCH})
	public ResponseEntity<String> update(
			@PathVariable("bdatno") Integer bdatno,
			@RequestBody bdatDto dto) {
		
		ResponseEntity<String> entity = null;
		try {
			dto.setBdatno(bdatno);
			service.modifybdat(dto);
			
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		}catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(
					e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value="/{bdatno}", method = {RequestMethod.DELETE})
	public ResponseEntity<String> remove(
			@PathVariable("bdatno") Integer bdatno) {
		
		ResponseEntity<String> entity = null;
		try {
			service.removebdat(bdatno);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		}catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(
					e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

}
