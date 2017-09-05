package com.helper.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

	private static Logger log = Logger.getLogger(PageController.class);
	
	@RequestMapping(value="/registerPage.do")
	public String loginsuccess(){
		return "register";
	}
	
 
	@RequestMapping(value="/loginPage.do")
	public String loginPage(){
		return "login";
	}
 
	
}
