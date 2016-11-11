package com.gclass.drone.mem.controller;


import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gclass.drone.loc.service.LocService;
import com.gclass.drone.login.dto.LoginDto;
import com.gclass.drone.mem.service.MemService;


@RequestMapping("/mem")
@Controller
public class MemController {
	
	@Inject
	private MemService service;
	@Inject
	private LocService servic;
<<<<<<< HEAD
			
=======
>>>>>>> 3a5035688978e6a9355c17cd97272636ec439f0e

	private static final Logger logger= LoggerFactory.getLogger(MemController.class);
	
	@RequestMapping(value="/ProfileDetail", method=RequestMethod.GET)
	public void read(@RequestParam("mno") int mno, Model model) throws Exception {
		
		model.addAttribute(service.read(mno));
	}

	@RequestMapping(value="/ProfileList", method= RequestMethod.GET)
	public void listAll(Model model) throws Exception {
		
		model.addAttribute("listAll", service.listAll());
	}
	
	@RequestMapping(value="/registrieren", method = RequestMethod.GET)
	public void loginGET(@ModelAttribute("dto")LoginDto dto){
		
	}
	@RequestMapping(value="/loginPost", method= RequestMethod.POST)
	public void loginPOST(LoginDto dto, HttpSession session, Model model)throws Exception{
	
	}
	
	
}
