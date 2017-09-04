package com.helper.util.shiroSessionUtil;

import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.InvalidSessionException;
import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.ValidatingSession;
import org.apache.shiro.subject.Subject;

import com.helper.model.UserModel;

public class SessionUserManager {

	 private static Logger log = Logger.getLogger(SessionUserManager.class);
	 
	 public static void setSession(Object key, Object value){  
	        Session session = getSession();  
	        log.info("Session默认超时时间为[" + session.getTimeout() + "]毫秒");  
	        if(null != session){  
	            session.setAttribute(key, value);  
	        }  
	 }  
	      
	 public static Session getSession(){  
	        try{  
	            Subject subject = SecurityUtils.getSubject();  
	            Session session = subject.getSession(false);  
	            if (session == null){  
	                session = subject.getSession();  
	            }  
	            if (session != null){  
	                return session;  
	            }  
	        }catch (InvalidSessionException e){  
	              
	        }  
	        return null;  
	} 
	
	
	 public static UserModel getUserbySession(){
		 UserModel user = (UserModel)getSession().getAttribute("currentUser");
		 return user;
	 }
	 
	 public static String getUsernamebySession(){
		 UserModel user = (UserModel)getSession().getAttribute("currentUser");
		 return user.getUsername();
	 }
	 
			
	 public static boolean isSessionOuttime(){
		 if(getSession() instanceof ValidatingSession && !((ValidatingSession)getSession()).isValid()) {  
		        return true;  
		 }
		 return false;
	 }
}
