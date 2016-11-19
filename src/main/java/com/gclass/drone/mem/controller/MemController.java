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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gclass.drone.board.dto.BsubjDto;
import com.gclass.drone.loc.dto.LocDto;
import com.gclass.drone.loc.service.LocService;
import com.gclass.drone.login.dto.LoginDto;
import com.gclass.drone.mem.dto.MemDto;
import com.gclass.drone.mem.service.MemService;


@RequestMapping("/mem")
@Controller
public class MemController {
	
	@Inject
	private MemService service;


	private static final Logger logger= LoggerFactory.getLogger(MemController.class);
	
/*	@RequestMapping(value="/ProfileDetail", method=RequestMethod.GET)
	public void read(@RequestParam("mno") int mno, Model model) throws Exception {
		
		model.addAttribute(service.read(mno));
	}*/
	
	
	@RequestMapping(value="/ProfileDetail", method = RequestMethod.GET)
	public void read(@RequestParam("mno") int mno, Model model) throws Exception {
		
		model.addAttribute(service.read(mno));
		model.addAttribute("mylist", service.mylist(mno));
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
	public String modifyPOST(@RequestParam("mno") int mno, MemDto board, LocDto ldto, RedirectAttributes rttr) throws Exception {
		
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
