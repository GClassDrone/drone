package com.gclass.drone.login.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
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

import com.gclass.drone.loc.dto.LocDto;
import com.gclass.drone.loc.service.LocService;
import com.gclass.drone.login.dto.LoginDto;
import com.gclass.drone.mem.dto.MemDto;
import com.gclass.drone.mem.service.MemService;

@Controller
public class LoginController {
	
	@Inject
	private LocService servic;
	@Inject
	private MemService service;
	@Autowired
	MemService memservice;
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@RequestMapping("/intro")
	public void intro() {
	}
	
	//주소 select박스 1번째
	@RequestMapping(value="/registrieren", method = RequestMethod.GET)
	public void loginGET(@ModelAttribute("dto")LoginDto dto, Model model)throws Exception{
		model.addAttribute("sido", servic.listSido());
	}
	//주소 select박스 2번째 동적
	@ResponseBody
	@RequestMapping(value="/regist", method = RequestMethod.POST)
	public ResponseEntity<List<LocDto>> loginPOST(@RequestBody LocDto lDto, Model model) throws Exception{
		ResponseEntity<List<LocDto>> entity = null;
		
		try{
			entity = new ResponseEntity<List<LocDto>>(servic.listSigungu(lDto.getSido()),HttpStatus.OK);
		}catch(Exception e){
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	//회원가입
	@RequestMapping(value="/registrieren",  method = RequestMethod.POST)
	public String loginHEAD(MemDto dto,  Model model)throws Exception{
		System.out.println(dto);
		service.regist(dto);
		model.addAttribute("result", "success");
		
		return "/intro";
	}
	@ResponseBody
	@RequestMapping(value="/dulogi", method= RequestMethod.POST)
	public String dulogin(@RequestParam("niknm") String niknm, Model model)throws Exception{
		if(service.dulogin(niknm) == 1 || niknm == null || niknm == ""){
			return "fail";
		}else{
			return "success";
		}
	}
	
	@ResponseBody
	@RequestMapping(value="/sesout", method= RequestMethod.POST)
	public void sesout(HttpServletRequest request, 
		      HttpServletResponse response, HttpSession session){
		
		System.out.println("sesout");
		Object obj = session.getAttribute("siteno");

	      if (obj != null) {
	         session.removeAttribute("siteno");
	           session.invalidate();
	        }
	}
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public void login(HttpServletRequest request, HttpSession session, HttpServletResponse response)throws Exception{
		session = request.getSession();
		String siteid = request.getParameter("siteid") ;
		String siteno = request.getParameter("siteno");
		System.out.println("siteid : "+siteid);
		System.out.println("siteno : "+siteno);
		if(siteid != null && siteno  != null){	
			MemDto dto=memservice.login(siteid,siteno);
			System.out.println(memservice.login(siteid,siteno));
			session.setAttribute("siteid", request.getParameter("siteid"));
			session.setAttribute("siteno", request.getParameter("siteno"));
			if (memservice.login(siteid,siteno) == null) {
				response.sendRedirect("/registrieren");
			}else{
				System.out.println(dto.getMno());	
				System.out.println(dto.getNiknm());
				session.setAttribute("mno", dto.getMno());
				session.setAttribute("niknm", dto.getNiknm());
				response.sendRedirect("/intro");
			}
		}
	}
}
