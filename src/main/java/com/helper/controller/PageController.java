package com.helper.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

	private static Logger log = Logger.getLogger(PageController.class);
	
	@RequestMapping(value="/index")
	public String index(){
		return "index";
	}
	
	@RequestMapping(value="/registerPage")
	public String loginsuccess(){
		return "register";
	}
 
	@RequestMapping(value="/loginPage")
	public String loginPage(){
		return "login";
	}
 
	@RequestMapping(value="/errorPage")
	public String errorPage(){
		return "404";
	}
 
	@RequestMapping(value="/myInfoPage")
	public String userInfoPage(){
		return "myInfo";
	}
	
	
}
