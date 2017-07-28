package com.helper.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("pageController")
public class PageController {

	
	@RequestMapping(value="/loginsuccess.do")
	public String loginsuccess(){
		return "success";
	}
	
	@RequestMapping(value="/error.do")
	public String error(){
		return "error";
	}
	
}
