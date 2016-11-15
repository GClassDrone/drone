package com.gclass.drone.board.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scripting.bsh.BshScriptUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gclass.drone.board.dto.BsubjDto;
import com.gclass.drone.board.service.BsubjService;

@Controller
@RequestMapping("/bsubj")
public class BsubjContoroller {
	
	Logger logger = LoggerFactory.getLogger(BsubjContoroller.class); 
	
	@Inject
	private BsubjService service;

	@RequestMapping(value="/subregi", method=RequestMethod.GET)
	public void insertGET(BsubjDto bDto, Model model) throws Exception{
		logger.info("register Get ... ");
	}
	
	@RequestMapping(value="/subregi", method=RequestMethod.POST)
	public String insertPOST(BsubjDto bDto, RedirectAttributes rttr) throws Exception{
		logger.info("register POST ... ");
		logger.info(bDto.toString());
		service.insert(bDto);
		rttr.addFlashAttribute("result", "success");
		
		return "redirect:/board/success";
	}
	
	@RequestMapping(value="/subremove", method = RequestMethod.POST)
	public String remove(@RequestParam("subjno") int subjno, RedirectAttributes rttr) throws Exception {
		
		service.delete(subjno);
		
		rttr.addFlashAttribute("msg","SUCCESS");
		return "redirect:/board/sublist";
	}
	
	@RequestMapping(value="/submodify", method=RequestMethod.GET)
	public void modify(@RequestParam("subjno") int subjno, Model model) throws Exception{

		logger.info("modifyGET....");
		model.addAttribute(service.read(subjno));
	}
	
	@RequestMapping(value="/submodify", method=RequestMethod.POST)
	public String modify(BsubjDto bDto, RedirectAttributes rttr) throws Exception{
		logger.info("modifyPOST....");
		service.update(bDto);
		rttr.addFlashAttribute("msg","success");
		
		return "redirect:/board/sublist";
	}
	
	@RequestMapping(value="/sublist", method=RequestMethod.GET)
	public void sublist(@RequestParam("bcateno") int bcateno, Model model) throws Exception{
		logger.info("sublist ....");
		model.addAttribute("sublist", service.sublistAll(bcateno));
	}
}
