package com.gclass.drone.login.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gclass.drone.loc.dto.LocDto;
import com.gclass.drone.loc.service.LocService;
import com.gclass.drone.login.dto.LoginDto;
import com.gclass.drone.mem.dto.MemDto;
import com.gclass.drone.mem.service.MemService;

@Controller
public class LoginController {
	
	@Inject
	private LocService servic;
	@Inject
	private MemService service;
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@RequestMapping("/intro")
	public void intro() {
	}
	
	//주소 select박스 1번째
	@RequestMapping(value="/registrieren", method = RequestMethod.GET)
	public void loginGET(@ModelAttribute("dto")LoginDto dto, Model model)throws Exception{
		model.addAttribute("sido", servic.listSido());
	}
	//주소 select박스 2번째 동적
	@ResponseBody
	@RequestMapping(value="/regist", method = RequestMethod.POST)
	public ResponseEntity<List<LocDto>> loginPOST(@RequestBody LocDto lDto, Model model) throws Exception{
		ResponseEntity<List<LocDto>> entity = null;
		
		try{
			entity = new ResponseEntity<List<LocDto>>(servic.listSigungu(lDto.getSido()),HttpStatus.OK);
		}catch(Exception e){
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	//로그인
	@RequestMapping(value="/registrieren",  method = RequestMethod.POST)
	public String loginHEAD(MemDto dto,  Model model)throws Exception{
		logger.info("dddadsada");
		System.out.println(dto);
		service.regist(dto);
		model.addAttribute("result", "success");
		
		return "/intro";
	}
}
