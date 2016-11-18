package com.gclass.drone.inform.controller;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gclass.drone.category.dto.CateDto;
import com.gclass.drone.category.dto.CatePageDto;
import com.gclass.drone.category.service.CateService;
import com.gclass.drone.common.InitSearchPage;
import com.gclass.drone.common.PageMake;
import com.gclass.drone.inform.dto.InformDto;
import com.gclass.drone.inform.service.InformServiceImpl;

@Controller
@RequestMapping("/inform")
public class InformController {
	
	@Inject
	private InformServiceImpl service;
	
	@Inject
	private CateService servic;
	
	private static final Logger logger = LoggerFactory.getLogger(InformController.class);
	
	@RequestMapping(value="/listNotice", method=RequestMethod.GET)
	public void list(@ModelAttribute("isp") InitSearchPage isp, Model model) throws Exception{
		logger.info("list ....");
		logger.info("받은 후 : "+isp.toString());
		model.addAttribute("list", service.listAll(isp));
		PageMake pm = new PageMake();
		pm.setInitPage(isp);
		pm.setTotalCount(service.totalRow(isp));
//		logger.info(pm.toString());
		logger.info("처리후"+isp.toString());
		model.addAttribute("pageMake", pm);
	}
	
	@RequestMapping(value="/noticeDetail", method=RequestMethod.GET)
	public void noticeDetail(InformDto dto, @ModelAttribute("isp") InitSearchPage isp,
			Model model)throws Exception{
		logger.info("read...");
		logger.info(isp.toString());
		logger.info(service.read(dto)+"dsds");
		model.addAttribute("isp",isp);
		model.addAttribute("InformDto",service.read(dto));
	}
	
	@RequestMapping(value="/remove", method =RequestMethod.POST)
	public String remove(InformDto dto,@ModelAttribute("isp") InitSearchPage isp, RedirectAttributes rttr)throws Exception{
		
		logger.info(isp.toString()+"aaa");
		
		service.remove(dto);
		
		logger.info(dto.toString()+"remove" );
//		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/inform/listNotice";
		
	}
	
	@RequestMapping(value="/modify", method=RequestMethod.GET)
	public void modifyGET(InformDto dto,Model model)throws Exception{
		model.addAttribute(service.read(dto));
	}
	
	@RequestMapping(value="/modify", method=RequestMethod.POST)
	public String modifyPOST(InformDto dto,RedirectAttributes rttr)throws Exception{
		logger.info("modify post");
		
		service.modify(dto);
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/inform/listNotice";
	}
	@RequestMapping(value="/info", method=RequestMethod.GET)
	public void lists(){
		logger.info("info get......");
	}

	//시장동향
	@RequestMapping(value="/info", method=RequestMethod.POST)
	public ResponseEntity<List<InformDto>> lists(@RequestBody CatePageDto cpDto)throws Exception{
		logger.info("info..........");
		ResponseEntity<List<InformDto>> entity = null;
		try{
			cpDto.setStartEnd();
			logger.info(cpDto.toString());
//			entity = new ResponseEntity<List<CateDto>>(service.ctsCateList(cpDto), HttpStatus.OK);
		}catch(Exception e){
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
}
