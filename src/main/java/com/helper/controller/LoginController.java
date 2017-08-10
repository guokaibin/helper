package com.helper.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	
	private static Logger log = Logger.getLogger(RegisterController.class);
	@RequestMapping(value="/loginpage.do",method=RequestMethod.GET)
	public String loginUser(){
		return "login";
	}
	
	
	@RequestMapping(value="/login.do",method = RequestMethod.POST)
	public String showLoginForm(HttpServletRequest request,@Param(value="username") String username,@Param(value="password") String password){
		 String error = null;
		 String uname = username.trim();
		 String pwd = password.trim();
		 if(StringUtils.isEmpty(uname)||StringUtils.isEmpty(pwd)){
			 error="用户名或密码不能为空";
			 request.setAttribute("error", error);  
	         return "login";  
		 }
		 
		 Subject subject =	SecurityUtils.getSubject();
		
		 UsernamePasswordToken token = new UsernamePasswordToken(uname,pwd);
		 
		 try {  
	         subject.login(token);  
	     } catch (UnknownAccountException e) {  
	         error = "用户名/密码错误";  
	     } catch (IncorrectCredentialsException e) {  
	         error = "用户名/密码错误";  
	     } catch (ExcessiveAttemptsException e) {  
	         error = "登录失败多次，账户锁定10分钟";  
	     } catch(LockedAccountException e){
	    	 error = "账户被锁定";
	     }catch (AuthenticationException e) {  
	         error = "其他错误：" + e.getMessage();  
	     }  
		 
		 if (error != null) { 
	         request.setAttribute("error", error);  
	         return "login";  
	     }  
	         
		 return "redirect:admin_home.do";
	}
	
	@RequestMapping(value="admin_home.do")
	public String admin_home(){
		return "admin_home";
	}
}
