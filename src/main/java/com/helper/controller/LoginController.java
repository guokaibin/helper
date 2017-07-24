package com.helper.controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping({"/loginController"})
public class LoginController {
	
	@RequestMapping(value="/login.do",method=RequestMethod.GET)
	public String login(){
		return "login";
	}
	
	@RequestMapping(value="/loginUser.do",method=RequestMethod.POST)
	public String loginUser(@Param("email") String email,@Param("password") String password,Model model){
		if(StringUtils.isEmpty(email)||StringUtils.isEmpty(password)){
			return "error";
		}
		
		
		return "home";
	}
	
}
