package com.gclass.drone.mem.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gclass.drone.mem.service.MemService;


@RequestMapping("/profile")
@Controller
public class MemController {
	
	@Inject
	private MemService service;
	
	@RequestMapping(value="/ProfileDetail", method=RequestMethod.GET)
	public void read(@RequestParam("mno") int mno, Model model) throws Exception {
		
		model.addAttribute(service.read(mno));
	}

	@RequestMapping("/ProfileList")
	public void main() {
	}
}
