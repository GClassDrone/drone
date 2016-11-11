package com.gclass.drone.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.gclass.drone.mem.service.MemService;


@Service
public class LoginInterceptor extends HandlerInterceptorAdapter{
	
	private static final String LOGIN = "login";
	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);
	
	@Autowired
	MemService memservice;
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
	
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		
		session.setAttribute("siteid", request.getParameter("siteid"));
		session.setAttribute("siteno", request.getParameter("siteno"));
		
		/*System.out.println(request.getParameter("siteid"));
		System.out.println(request.getParameter("siteno"));
		*/
	
		
		String siteid = request.getParameter("siteid") ;
		String siteno = request.getParameter("siteno");
		System.out.println(siteid);
		System.out.println(siteno);
		if(siteid != null && siteno  != null){
			memservice.login(siteid,siteno);
			System.out.println(memservice.login(siteid,siteno));
			
			if (memservice.login(siteid,siteno) == null) {
				response.sendRedirect("/registrieren");
			}
		}
		return true;
	}
}