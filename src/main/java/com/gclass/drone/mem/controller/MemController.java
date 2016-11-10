package com.gclass.drone.mem.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gclass.drone.mem.dto.MemDto;
import com.gclass.drone.mem.service.MemService;


@RequestMapping("/profile")
@Controller
public class MemController {
	
	@Inject
	private MemService service;

	private static final Logger logger= LoggerFactory.getLogger(MemController.class);
	
	@RequestMapping(value="/ProfileDetail", method=RequestMethod.GET)
	public void read(@RequestParam("mno") int mno, Model model) throws Exception {
		
		model.addAttribute(service.read(mno));
	}

	@RequestMapping(value="/ProfileList", method= RequestMethod.GET)
	public void listAll(Model model) throws Exception {
		
		List<MemDto> list = service.listAll();
		
		model.addAttribute("pilotlist", list);
	}
}
