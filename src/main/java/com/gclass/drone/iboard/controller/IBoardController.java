package com.gclass.drone.iboard.controller;



import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import javax.swing.text.View;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gclass.drone.board.dto.BsubjDto;
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
	public void registerGET(IBoardDto board, @RequestParam("subjno") int subjno, Model model) throws Exception {
		model.addAttribute("subjno", subjno);
		logger.info("인스턴스게시판 글등록 겟 .....");
		logger.info("subjno"+ subjno);
	}
	
	@RequestMapping(value="/itregi", method= RequestMethod.POST)
	public String registerPOST(IBoardDto board,@RequestParam("subjno") int subjno, RedirectAttributes rttr) throws Exception {
		
		logger.info("인스턴스게시판 글등록 포스트.....");
		logger.info(board.toString());
		
		System.out.println("subjno 번호"+subjno);
		service.regist(board);
		
	    return "redirect:/instanceboard/itlist?subjno="+subjno;
	}
	
	@RequestMapping(value="/itlist", method=RequestMethod.GET)
	public void itlist(@RequestParam("subjno") int subjno, @ModelAttribute("isp") InitSearchPage isp, Model model) throws Exception{

		model.addAttribute("list", service.listAll(subjno, isp));
		model.addAttribute("listheader", service.listheader(subjno));
		PageMake pm = new PageMake();
		pm.setInitPage(isp);
		pm.setTotalCount(service.totalRow(subjno, isp));
		model.addAttribute("subjno",subjno);
		model.addAttribute("pageMake", pm);		
	}
	@RequestMapping(value = "/itdetail", method= RequestMethod.GET)
	public void itdetail(@RequestParam("bno") int bno, @RequestParam("subjno") Integer subjno, Model model) throws Exception{
		model.addAttribute("bno", bno);
		model.addAttribute("subjno", subjno);
		model.addAttribute(service.read(bno, subjno));
		
		logger.info("글번호"+bno+"서브젝트번호"+subjno);
	}
	
	@RequestMapping(value="/itupdate",  method=RequestMethod.GET)
	public void itupdate(@RequestParam("bno") int bno, @RequestParam("subjno") Integer subjno, Model model) throws Exception{
		model.addAttribute("bno", bno);
		logger.info("글번호 업뎅티ㅡ"+bno+"서브젝트번호"+subjno);
		model.addAttribute("subjno", subjno);
		model.addAttribute(service.read(bno, subjno));
	}
	
	
	@RequestMapping(value="/itupdate", method=RequestMethod.POST)
	public String modify(IBoardDto bDto,@RequestParam("subjno") int subjno,@RequestParam("bno") int bno, RedirectAttributes rttr) throws Exception{

		logger.info(bDto.toString());
		service.modify(bDto);
		
		return "redirect:/instanceboard/itdetail?subjno="+subjno+"&bno="+bno;
	}
	
	@RequestMapping(value="/remove", method=RequestMethod.POST)
	public String remove(@RequestParam("subjno") int subjno, @RequestParam("bno") int bno, RedirectAttributes rttr) throws Exception{
		
		logger.info("remove....");
		service.remove(bno, subjno);
		rttr.addFlashAttribute("subjno",subjno);
		
		return "redirect:/instanceboard/itlist?subjno="+subjno;
	}
}
