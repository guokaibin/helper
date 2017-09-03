package com.helper.controller;

import org.apache.ibatis.annotations.Param;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.helper.util.sendRegisterPhoneMessage.SendCode;

/**
 * 2017/8/09
 * @author gkb
 * UserController
 */
@Controller
public class UserController {
	
	private static Logger log = Logger.getLogger(UserController.class);
	
	@ResponseBody
	@RequestMapping(value="sendPhoneVerifyCode.do",method=RequestMethod.GET)
	public String sendPhoneVerifyCode(@Param(value="username") String username){
		return SendCode.sendSMSCode(username);
	}
	
	
	
	
	//注册用户
	@RequestMapping(value="registerUser.do",method=RequestMethod.POST)
	public String registerUser(@Param(value="name") String name,@Param(value="username") String username,@Param(value="password") String password,@Param(value="verifycode") String verifycode){
		
		
		
		
		return null;
	}
	
	
	
	
	
}
