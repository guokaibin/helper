package com.helper.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	
	@RequestMapping(value="/loginPage.do",method=RequestMethod.GET)
	public String loginUser(){
		return "login";
	}
	
	
	@RequestMapping(value="/login.do",method = RequestMethod.GET)
	public String showLoginForm(HttpServletRequest req,Model model){
	 return "admin_home";
	}
	
	
}
