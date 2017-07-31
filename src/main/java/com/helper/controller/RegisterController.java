package com.helper.controller;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.ibatis.annotations.Param;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alibaba.druid.util.StringUtils;
import com.helper.model.User;
import com.helper.service.RegisterServcie;
import com.helper.util.encryption.SHA512;
import com.helper.util.sendEmail.Mail;
import com.helper.util.sendEmail.MailUtil;
import com.helper.util.timeHandler.TimeUtil;

/**
 * 2017/07/10
 * @author gkb
 * 注册控制Controller
 */
@Controller
public class RegisterController {
	
	private static Logger log = Logger.getLogger(RegisterController.class);
	
	@Autowired(required=true)
	private RegisterServcie registerService;
	
	@RequestMapping("/register.do")
	public String register(){
		return "register";
	}
	
	@RequestMapping(value = "/submitEmail.do",method=RequestMethod.POST)
	public String submitEmail(@Param(value="userEmail") String userEmail,Model model){
		if(StringUtils.isEmpty(userEmail.trim())){
			return "register";
		}
		
		Pattern pattern = Pattern.compile("#^[a-z_0-9.-]{1,64}@([a-z0-9-]{1,200}.){1,5}[a-z]{1,6}$#i"); 
		Matcher matcher = pattern.matcher(userEmail);
		if(matcher.matches()){
			return "register";
		}
		
		User user = new User();
		String keyCode = SHA512.encrypte(userEmail, "SHA-512");
		user.setCode(keyCode);
		user.setUserEmail(userEmail);
		user.setAuthTime(TimeUtil.getNextOneDay());
		user.setCreateUser(userEmail);
		user.setCreateTime(System.currentTimeMillis());
		user.setUpdateUser(userEmail);
		user.setStatus(0);
		user.setLocked(Boolean.FALSE);
		user.setSalt(keyCode);
		
		StringBuffer sb=new StringBuffer("点击下面链接激活账号，48小时生效，否则重新注册账号，链接只能使用一次，请尽快激活！</br>");  
        sb.append("<a href=\"http://localhost:8080/helper/activation.do?userEmail=");  
        sb.append(userEmail);   
        sb.append("&code=");   
        sb.append(user.getCode());  
        sb.append("\">http://localhost:8080/helper/activation.do?userEmail=");   
        sb.append(userEmail);  
        sb.append("&code=");  
        sb.append(user.getCode());  
        sb.append("</a>");
		
		Mail mail = new Mail();
		mail.setHost("smtp.163.com");
		mail.setReceiver(userEmail);
		mail.setSender("15570353396@163.com");
		mail.setSubject("请查收邮件");
		mail.setUsername("15570353396@163.com");
		mail.setPassword("guokaibin.7.8.9");
		mail.setMessage(sb.toString());
		
		if(MailUtil.send(mail)){
			if(registerService.insertRegisterUser(user)==0){
				return "error";
			}
		}else{
			return "error";
		}
		
		model.addAttribute("email",userEmail);
		model.addAttribute("success","验证邮箱已到达");
		return "success";
		
	}

	@RequestMapping(value="activation.do",method=RequestMethod.GET)
	public String activation(@Param(value="userEmail") String userEmail,@Param(value="code") String code,Model model){
		if(StringUtils.isEmpty(userEmail)||StringUtils.isEmpty(code)){
			return "error";
		}
		int mark = registerService.updateActivation(userEmail, code);
		if(mark==0){
			return "error";
		}
		model.addAttribute("email",userEmail);
		return "accountInfo";
	}
	
	@RequestMapping(value="submitUserInfo.do",method=RequestMethod.POST)
	public String submitUserInfo(@Param(value="userName") String userName,@Param(value="password") String password, @Param( value="userEmail") String userEmail,Model model){
		if(StringUtils.isEmpty(userEmail)||StringUtils.isEmpty(password)||StringUtils.isEmpty(userName)){
			return "error";
		}
		int mark = registerService.insertUserNamePassword(userName, password,userEmail);
		if(mark==0){
			return "error";
		}
		model.addAttribute("email",userEmail);
		model.addAttribute("userName",userName);
		model.addAttribute("success","恭喜注册成功!,您的账户为:");
		return "success";
	}
	
	
	@RequestMapping(value="home.do",method=RequestMethod.GET)
	public String goHome(){
		return "home";
	}
	
	public RegisterServcie getRegisterService() {
		return registerService;
	}
	
	public void setRegisterService(RegisterServcie registerService) {
		this.registerService = registerService;
	}
	
}
