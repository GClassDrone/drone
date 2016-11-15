package com.gclass.drone.iboard.controller;



import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gclass.drone.common.InitSearchPage;
import com.gclass.drone.common.PageMake;
import com.gclass.drone.iboard.dto.IBoardDto;
import com.gclass.drone.iboard.service.IBoardService;

@RequestMapping("/instanceboard")
@Controller
public class IBoardController {

	private static final Logger logger = LoggerFactory.getLogger(IBoardController.class);
	
	@Inject
	private IBoardService service;
	
	@RequestMapping(value="/itregi", method= RequestMethod.GET)
	public void registerGET(IBoardDto board, Model model) throws Exception {
		
		logger.info("인스턴스게시판 글등록 겟 .....");
	}
	
	@RequestMapping(value="/itregi", method= RequestMethod.POST)
	public String registerPOST(IBoardDto board, RedirectAttributes rttr) throws Exception {
		
		logger.info("인스턴스게시판 글등록 포스트.....");
		logger.info(board.toString());
		
		service.regist(board);		
		rttr.addFlashAttribute("msg", "SUCCESS");
	    
	    return "redirect:/instanceboard/itlist";
	}
	
	@RequestMapping(value="/itlist", method=RequestMethod.GET)
	public void itlist(@RequestParam("subjno") int subjno, @ModelAttribute("isp") InitSearchPage isp, Model model) throws Exception{
		logger.info("itlist get..."+subjno);
		model.addAttribute("list", service.listAll(subjno, isp));
		PageMake pm = new PageMake();
		pm.setInitPage(isp);
		pm.setTotalCount(service.totalRow(subjno, isp));
		model.addAttribute("pageMake", pm);		
	}
	@RequestMapping(value = "/itdetail", method= RequestMethod.GET)
	public void itdetail(@RequestParam("bno") int bno, @RequestParam("subjno") Integer subjno, Model model) throws Exception{
		model.addAttribute("bno", bno);
		logger.info("itde"+bno+"aa"+subjno);
		model.addAttribute("subjno", subjno);
		model.addAttribute(service.read(bno, subjno));
	}
	
	@RequestMapping(value="/itupdate",  method=RequestMethod.GET)
	public void itupdate(@RequestParam("bno") int bno, @RequestParam("subjno") Integer subjno, Model model) throws Exception{
		model.addAttribute(service.read(bno, subjno));
	}
	
	
	@RequestMapping(value="/itupdate", method=RequestMethod.POST)
	public String modify(IBoardDto bDto, RedirectAttributes rttr) throws Exception{

		service.modify(bDto);
		rttr.addFlashAttribute("msg","success");
		
		return "redirect:/instanceboard/itlist";
	}
	
	@RequestMapping(value="/remove", method=RequestMethod.POST)
	public String remove(@RequestParam("subjno") int subjno, @RequestParam("bno") int bno, @ModelAttribute("isp") InitSearchPage isp, RedirectAttributes rttr) throws Exception{
		logger.info(subjno + " " + bno);
		logger.info("remove....");
		service.remove(bno, subjno);
		rttr.addFlashAttribute("subjno",subjno);
//		rttr.addFlashAttribute("isp", isp);
		
		return "redirect:/instanceboard/itlist";
	}
}
