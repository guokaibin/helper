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
	
	//进入主页
	@RequestMapping(value="admin_home.do",method=RequestMethod.GET)
	public String admin_home(){
		return "admin_home";
	}
	
	//进入我的资料
	@RequestMapping(value="admin_form_myProfile.do",method=RequestMethod.GET)
	public String admin_myProfile(){
		return "admin_form_myProfile";
	}
	
	@RequestMapping(value="admin_form_headIcon.do")
	public String admin_headIcon(){
		return "admin_form_headIcon";
	}
}
