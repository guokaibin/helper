package com.helper.realm;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.InvalidSessionException;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import com.helper.model.UserModel;
import com.helper.service.UserService;

public class UserRealm extends AuthorizingRealm{

	@Autowired
	private UserService userService;
	
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection arg0) {
		return null;
	}

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken arg0) throws AuthenticationException {
		
		String username = (String) arg0.getPrincipal();  

        UserModel user = userService.findUserByUsername(username); 
        
        if(user != null){ 
        	
        	if(Boolean.TRUE.equals(user.getLocked())){
          		 throw new LockedAccountException(); 
            }
        	
        	SimpleAuthenticationInfo simpleAuthenticationInfo = new SimpleAuthenticationInfo(user.getUsername(),user.getPassword(),ByteSource.Util.bytes(user.getCredentialsSalt()),getName());
    		
        	this.setSession("currentUser", user); 
        	
        	return simpleAuthenticationInfo;
        }else{
        	throw new UnknownAccountException();
        }  
        
	}
	
	
	 
    private void setSession(Object key, Object value){  
        Session session = getSession();  
        System.out.println("Session默认超时时间为[" + session.getTimeout() + "]毫秒");  
        if(null != session){  
            session.setAttribute(key, value);  
        }  
    }  
      
    
    
    private Session getSession(){  
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
	
	
}
