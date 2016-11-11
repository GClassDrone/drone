package com.gclass.drone.board.controller;

import java.util.List;

import javax.inject.Inject;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gclass.drone.board.dto.AttachDto;
import com.gclass.drone.board.dto.BoardDto;
import com.gclass.drone.board.dto.InitSearchPage;
import com.gclass.drone.board.dto.PageMake;
import com.gclass.drone.board.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	Logger logger = LoggerFactory.getLogger(BoardController.class); 
	
	@Inject
	private BoardService service;
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public void insertGET(BoardDto bDto, Model model) throws Exception{
		logger.info("register Get ... ");
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String insertPOST(BoardDto bDto, RedirectAttributes rttr) throws Exception{
		logger.info("register POST ... ");
		logger.info(bDto.toString());
		service.insert(bDto);
		rttr.addFlashAttribute("msg", "success");
		
		return "redirect:/board/list";
	}
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public void list(@ModelAttribute("isp") InitSearchPage isp, Model model) throws Exception{
		logger.info("list ....");
		logger.info("받은 후 : "+isp.toString());
		model.addAttribute("list", service.listAll(isp));
		PageMake pm = new PageMake();
		pm.setInitPage(isp);
		pm.setTotalCount(service.totalRow(isp));
		logger.info("처리후"+isp.toString());
		model.addAttribute("pageMake", pm);
	}
	
	@RequestMapping(value="/read", method=RequestMethod.GET)
	public void read(@RequestParam("bno") int bno, @ModelAttribute("isp") InitSearchPage isp, Model model) throws Exception{
		logger.info("read....");
		logger.info(isp.toString());
		model.addAttribute("board",service.read(bno));
	}
	
	@RequestMapping(value="/remove", method=RequestMethod.POST)
	public String remove(@RequestParam("bno") int bno, InitSearchPage isp, RedirectAttributes rttr) throws Exception{
		logger.info("remove....");
		service.delete(bno);
		rttr.addAttribute("page", isp.getPage());
		rttr.addAttribute("perPageNum", isp.getPerPageNum());
		rttr.addAttribute("searchType", isp.getSearchType());
		rttr.addAttribute("keyWord", isp.getKeyWord());		
		rttr.addFlashAttribute("msg","success");
		
		return "redirect:/board/list";
	}
	
	@RequestMapping(value="/modify", method=RequestMethod.GET)
	public void modify(@RequestParam("bno") int bno, @ModelAttribute("isp") InitSearchPage isp, Model model) throws Exception{
		logger.info("modifyGET....");
		logger.info(isp.toString());		
		model.addAttribute(service.read(bno));
	}
	
	@RequestMapping(value="/modify", method=RequestMethod.POST)
	public String modify(BoardDto bDto, InitSearchPage isp, RedirectAttributes rttr) throws Exception{
		logger.info("modifyPOST....");
		service.update(bDto);
		logger.info("보내기전"+isp.toString());
		rttr.addAttribute("page", isp.getPage());
		rttr.addAttribute("perPageNum", isp.getPerPageNum());
		rttr.addAttribute("searchType", isp.getSearchType());
		rttr.addAttribute("keyWord", isp.getKeyWord());
		rttr.addFlashAttribute("msg","success");
		
		return "redirect:/board/list";
	}
	
	@RequestMapping("/getAttach/{bno}")
	@ResponseBody
	public List<String> getAttach(@PathVariable("bno") Integer bno) throws Exception{
		return service.getAttach(bno);
	}
	
	@ResponseBody
	@RequestMapping(value="/delOneAttach", method=RequestMethod.POST)
	public ResponseEntity<String> delOneAttach(@RequestBody AttachDto attachDto) throws Exception{
		logger.info("delOneAttach...");
		service.deleteOneAttach(attachDto);
		return new ResponseEntity<String>("deleted", HttpStatus.OK);
	}
	
	@RequestMapping(value="/sublist", method=RequestMethod.GET)
	public void sublist(@ModelAttribute("isp") InitSearchPage isp, Model model) throws Exception{
		logger.info("sublist ....");
		logger.info("받은 후 : "+isp.toString());
		model.addAttribute("sublist", service.sublistAll(isp));
		PageMake pm = new PageMake();
		pm.setInitPage(isp);
		pm.setTotalCount(service.totalRow(isp));
		logger.info("처리후"+isp.toString());
		model.addAttribute("pageMake", pm);
	}
}
