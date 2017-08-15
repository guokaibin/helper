package com.helper.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.ValidatingSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.helper.model.User;
import com.helper.model.UserInfo;
import com.helper.service.UserInfoService;
import com.helper.util.shiroSessionUtil.SessionUserManager;

@Controller
public class PageController {

	private static Logger log = Logger.getLogger(RegisterController.class);
	
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
	
	@RequestMapping(value="admin_form_headIcon.do")
	public String admin_from_headIcon(){
		return "admin_form_headIcon";
	}
	
	@RequestMapping(value="admin_form_bindPhone.do")
	public String admin_form_bindPhone(){
		return "admin_form_bindPhone";
	}
	
	@RequestMapping(value="errorpage.do")
	public String errorpage(){
		return "admin_404";
	}
	
	@RequestMapping(value="admin_form_sellSkill.do")
	public String admin_form_sellSkill(){
		return "admin_form_sellSkill";
	}
	
	
	@Autowired
	private UserInfoService userInfoService;
	
	//进入我的资料
	@RequestMapping(value="admin_form_myProfile.do",method=RequestMethod.GET)
	public String admin_myProfile(HttpServletRequest request){
		Session session = SessionUserManager.getSession();
		if(session instanceof ValidatingSession && !((ValidatingSession)session).isValid()) {  
		    return "redirect:loginpage.do";  
		 }
		User user = (User)session.getAttribute("currentUser");
		if(user==null){
			return "redirect:loginpage.do";
		}
			
		UserInfo userInfo = userInfoService.getUserInfo(user.getUserId());
		request.setAttribute("userInfo", userInfo);	
		
		
			return "admin_form_myProfile";
	}

	@RequestMapping(value="admin_form_webUploaderView.do")
	public String admin_from_webUploaderView(){
		return "admin_form_webUploaderView";
	}
	

	public UserInfoService getUserInfoService() {
		return userInfoService;
	}

	public void setUserInfoService(UserInfoService userInfoService) {
		this.userInfoService = userInfoService;
	}
	
	
}
