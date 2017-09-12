package com.helper.controller;

import java.util.HashMap;
import java.util.Map;

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
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.helper.model.UserModel;
import com.helper.service.UserService;
import com.helper.util.RegexUtils.RegexUtil;
import com.helper.util.sendRegisterVerifyCode.SendCode;

/**
 * 2017/8/09
 * @author gkb
 * UserController
 */
@Controller
/*@RequestMapping("/UserController")*/
public class UserController {
	
	private static Logger log = Logger.getLogger(UserController.class);
 
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/register.do")
	public String register(){
		return "register";
	}
	
	@ResponseBody
	@RequestMapping(value="sendPhoneVerifyCode",method=RequestMethod.POST)
	public Map<String,Object> sendPhoneVerifyCode(HttpServletRequest request,String username){
		Map<String,Object> resultMap = new HashMap<String,Object>();
		if(!RegexUtil.isMobile(username)){
			resultMap.put("result", "请输入正确的手机号码");
		}
		
		SendCode.sendSMSCode(username);
		return resultMap;
	}
	
	
	
	
	//注册用户
	@RequestMapping(value="registerUser",method=RequestMethod.POST)
	public String registerUser(HttpServletRequest request,@Param(value="name") String name,@Param(value="username") String username,@Param(value="password") String password,@Param(value="verifycode") String verifycode){
		
		String message = "";
		String verifyCodeMsg = SendCode.verifycode(username,verifycode);
		
		if(!verifyCodeMsg.equals("200")){
			message = verifyCodeMsg;
		}
	
		if(!RegexUtil.isMobile(username)){
			message = "请输入正确的手机号码";
			request.setAttribute("message", message);
			return "register";
		}
		UserModel userModel = new UserModel();
		userModel.setName(name);
		userModel.setUsername(username);
		userModel.setPassword(encodedPassword(username,password));
		userModel.setSalt(getSalt());
		userModel.setCreateUser(username);
		userModel.setCreateTime(System.currentTimeMillis());
		userModel.setUpdateUser(username);
		userModel.setAvatarUrl("http://oub18pmk0.bkt.clouddn.com/user06.png");
		userModel.setLocked(0);
		
		int result = userService.addUser(userModel);
		if(result==1)
			return "home";
		return null;
	}
	
	
	
	
	
	
	
	
	
	@RequestMapping(value="/loginUser",method = RequestMethod.POST)
	public String loginUser(HttpServletRequest request,@Param(value="username") String username,@Param(value="password") String password){
		 String error = null;
		 if(StringUtils.isEmpty(username.trim())||StringUtils.isEmpty(password.trim())){
			 error="用户名或密码不能为空";
			 request.setAttribute("error", error);  
	         return "login";  
		 }
		 Subject subject =	SecurityUtils.getSubject();
		 UsernamePasswordToken token = new UsernamePasswordToken(username,password);
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
	         
//		 return "redirect:home";
		 return "home";
	}
	
	
	
	
	
	//加密密码
	public String encodedPassword(String username,String password){
		  String algorithmName = "md5";  
		  String salt1 = username;  
		  String salt2 = new SecureRandomNumberGenerator().nextBytes().toHex();  
		  int hashIterations = 3;  
		  SimpleHash hash = new SimpleHash(algorithmName, password,  salt1 + salt2, hashIterations);  
		  return hash.toHex();
	}
	
	public String getSalt(){
		 String salt = new SecureRandomNumberGenerator().nextBytes().toHex();
		 return salt;
	}
	
	public static void main(String[] args) {
		UserController u = new UserController();
		System.out.println(u.encodedPassword("13767412438","123456")); 
	}
	
	
 

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	
}
