package com.helper.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	@RequestMapping(value="admin_chart.do")
	public String admin_chart(){
		return "admin_chart";
	}
	
	
	
	
	@RequestMapping("/")
	public String index(){
		return "admin/index";
	}
}
