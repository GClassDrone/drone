package com.gclass.drone.inform.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gclass.drone.common.InitSearchPage;
import com.gclass.drone.common.PageMake;
import com.gclass.drone.inform.service.InformServiceImpl;

@Controller
@RequestMapping("/inform/*")
public class InformController {
	
	@Inject
	private InformServiceImpl service;
	
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
	public void noticeDetail(){
		
	}
}
