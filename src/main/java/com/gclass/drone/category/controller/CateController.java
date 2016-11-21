package com.gclass.drone.category.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gclass.drone.category.dto.CateDto;
import com.gclass.drone.category.dto.CatePageDto;
import com.gclass.drone.category.service.CateService;

@Controller
@RequestMapping("/cate")
public class CateController {
	
	private static final Logger logger = LoggerFactory.getLogger(CateController.class);
	
	@Inject
	private CateService service;
	
	@RequestMapping(value="/cateList", method=RequestMethod.GET)
	public void cateList(){
		logger.info("cateList GET.........");
	}
	
	@ResponseBody
	@RequestMapping(value="/cateList", method=RequestMethod.POST)
	public ResponseEntity<List<CateDto>> cataList(@RequestBody CatePageDto cpDto){
		logger.info("cateList POST.........");
		ResponseEntity<List<CateDto>> entity = null;
		try{
			cpDto.setStartEnd();
			logger.info(cpDto.toString());
			entity = new ResponseEntity<List<CateDto>>(service.ctsCateList(cpDto), HttpStatus.OK);
		}catch(Exception e){
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value="/cateList/{cateno}", method=RequestMethod.GET)
	public String cataListPath(@PathVariable("cateno") int cateno, RedirectAttributes rttr){
		rttr.addFlashAttribute("cateno", cateno);
		return "redirect:/cate/cateList";
	}
}
