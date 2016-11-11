package com.gclass.drone.board.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.gclass.drone.board.dto.InitPage;
import com.gclass.drone.board.dto.PageMake;
import com.gclass.drone.board.dto.ReplyDto;
import com.gclass.drone.board.service.ReplyService;

@RestController
@RequestMapping("/reply")
public class ReplyController {
	
	@Inject
	private ReplyService service;
	
	Logger logger = LoggerFactory.getLogger(ReplyController.class);

	@RequestMapping(value="", method=RequestMethod.POST)
	public ResponseEntity<String> register(@RequestBody ReplyDto reply){
		ResponseEntity<String> entity = null;
		try {
			service.insert(reply);
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value="/{rno}", method={RequestMethod.PUT, RequestMethod.PATCH})
	public ResponseEntity<String> update (@PathVariable("rno") Integer rno, @RequestBody ReplyDto reply) {
		ResponseEntity<String> entity = null;
		try {
			reply.setRno(rno);
			service.update(reply);
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@RequestMapping(value="/{rno}", method=RequestMethod.DELETE)
	public ResponseEntity<String> remove(@PathVariable("rno") Integer rno){
		ResponseEntity<String> entity = null;
		try {
			service.delete(rno);
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);			
		}
		
		return entity;
	}
	
	@RequestMapping(value="/{num}/{page}", method=RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> list(@PathVariable("num") Integer num, @PathVariable("page") Integer page){
		
		ResponseEntity<Map<String, Object>> entity = null;
		
		logger.info("리스트");
		try {
			InitPage ipg = new InitPage();
			ipg.setPage(page);

			PageMake pm = new PageMake();
			pm.setInitPage(ipg);
						
			Map<String, Object> map = new HashMap<String, Object>();
			List<ReplyDto> list = service.list(num, ipg);
			map.put("list", list);
			
			int replyCount = service.count(num);
			pm.setTotalCount(replyCount);
			
			map.put("pm", pm);
			entity = new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String,Object>>(HttpStatus.BAD_REQUEST);
		}
			
		return entity;
	}
	
}
