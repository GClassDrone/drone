package com.gclass.drone;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping
@Controller
public class HomeController {
	@RequestMapping("/map/map")
	public void map(){
		
	}
	@RequestMapping("/Main")
	public void main(){
		
	}
	@RequestMapping("/CGlist")
	public void cglist(){
		
	}

	@RequestMapping("/test")
	public void test(){	
	}
	
	@RequestMapping("/test1")
	public void test1(){
		
	}

	@RequestMapping("/intro")
	public void intro(){
		
	}
	@RequestMapping("/info")
	public void info(){
		
	}
	@RequestMapping("/pilot")
	public void pilot(){
		
	}
	@RequestMapping("/infoDetail")
	public void infoDetail(){
		
	}
	
	@RequestMapping("/infoForm")
	public void infoForm(){
		
	}
	
	@RequestMapping("/board")
	public void board(){
		
	}
	@RequestMapping("/test2")
	public void test2(){
	}
	@RequestMapping("/googleOauth")
	public void googleOauth(){
		
	}
	
	@RequestMapping(value="/bdat/bdat", method =RequestMethod.GET)
	public void bdat() {
		
	}
}
