package com.gclass.drone.iboard.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gclass.drone.iboard.dao.IBoardDao;
import com.gclass.drone.iboard.dto.IBoardDto;
import com.gclass.drone.iboard.service.IBoardService;

@Controller
public class IBoardController {

	private static final Logger logger = LoggerFactory.getLogger(IBoardController.class);
	
	@Inject
	private IBoardService service;
	
	@RequestMapping(value="/register", method= RequestMethod.GET)
	public void registerGET(IBoardDao board, Model model) throws Exception {
		
		logger.info("인스턴스게시판 글등록 겟 .....");
	}
	
	@RequestMapping(value="/register", method= RequestMethod.POST)
	public String registerPOST(IBoardDto board, Model model) throws Exception {
		
		logger.info("인스턴스게시판 글등록 포스트.....");
		logger.info(board.toString());
		
		service.regist(board);		
		model.addAttribute("result","success");
		
		return "/board/success";
	}
	
	@RequestMapping(value="/itlist", method=RequestMethod.GET)
	public void itlist(){
		
	}
	
	@RequestMapping("/itdetail")
	public void itdetail(){
		
	}
	
	@RequestMapping("/itupdate")
	public void itupdate(){
		
	}
}
