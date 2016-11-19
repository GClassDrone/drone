package com.gclass.drone.mem.controller;


import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gclass.drone.category.dto.CateDto;
import com.gclass.drone.category.service.CateService;
import com.gclass.drone.drone.service.droneservice;
import com.gclass.drone.loc.service.LocService;
import com.gclass.drone.login.dto.LoginDto;
import com.gclass.drone.mem.dto.MemDto;
import com.gclass.drone.mem.dto.MnoCatePageDto;
import com.gclass.drone.mem.service.MemService;


@RequestMapping("/mem")
@Controller
public class MemController {
	
	@Inject
	private MemService service;

	@Inject
	private droneservice servic;
	
	private static final Logger logger= LoggerFactory.getLogger(MemController.class);
	
/*	@RequestMapping(value="/ProfileDetail", method=RequestMethod.GET)
	public void read(@RequestParam("mno") int mno, Model model) throws Exception {
		
		model.addAttribute(service.read(mno));
	}*/
	
	
	@RequestMapping(value="/ProfileDetail", method = RequestMethod.GET)
	public void read(@RequestParam("mno") int mno, Model model) throws Exception {
		
		model.addAttribute(service.read(mno));
		model.addAttribute("mylist", service.mylist(mno));
		model.addAttribute("dronelist", servic.dronelist(mno));
	}
	
	@RequestMapping(value="/mnoctsList", method=RequestMethod.POST)
	public ResponseEntity<List<CateDto>> cataList(@RequestBody MnoCatePageDto cpDto){
		ResponseEntity<List<CateDto>> entity = null;
		try{
			cpDto.setStartEnd();
			logger.info(cpDto.toString());
			entity = new ResponseEntity<List<CateDto>>(service.conlist(cpDto), HttpStatus.OK);
		}catch(Exception e){
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		logger.info("----------------------------------------"+entity.toString());
		return entity;
	}
	@RequestMapping(value="/ProfileList", method = RequestMethod.GET)
	public void listAll(Model model) throws Exception {
		
		model.addAttribute("listAll", service.listAll());
	}
	
	@RequestMapping(value="/Profilemodify", method = RequestMethod.GET)
	public void modifyGET(int mno, Model model) throws Exception {
		
		model.addAttribute(service.read(mno));
	}
	
	@RequestMapping(value="/Profilemodify", method = RequestMethod.POST)
	public String modifyPOST(@RequestParam("mno") int mno, MemDto board, RedirectAttributes rttr) throws Exception {
		
		service.modify(board);
		
		return "redirect:/mem/ProfileDetail?mno="+mno;
	}
	
	/*게시판 제작*/
	
	@RequestMapping(value="/subregi", method=RequestMethod.GET)
	public void insertGET(MemDto dto, Model model) throws Exception{
		logger.info("register Get ... ");
	}
	
	@RequestMapping(value="/subregi", method=RequestMethod.POST)
	public String insertPOST(@RequestParam("mno") int mno, MemDto dto, RedirectAttributes rttr) throws Exception{
		logger.info("register POST ... ");
		logger.info(dto.toString());
		
		service.binsert(dto);
		
		return "redirect:/mem/ProfileDetail?mno="+mno;
	}
}
