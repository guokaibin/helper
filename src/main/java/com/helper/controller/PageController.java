package com.helper.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PageController {

	
	@RequestMapping(value="/loginsuccess.do")
	public String loginsuccess(){
		return "success";
	}
	
	@RequestMapping(value="/error.do")
	public String error(){
		return "error";
	}
	
	@RequestMapping(value="admin_home.do",method=RequestMethod.GET)
	public String admin_home(){
		return "admin_home";
	}
	
	
	@RequestMapping(value="admin_chart.do",method=RequestMethod.GET)
	public String admin_chart(){
		return "admin_chart";
	}
 
}
