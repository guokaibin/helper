package com.helper.realm;

import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.SimpleHash;

public class Constants {
	public static String VALIDATE_CODE="_VALIDATE_CODE";
	
	public static final String AVATAR_URL="http://oub18pmk0.bkt.clouddn.com/";
	
	public static final String accessKey = "CTxzTRjtfg0cYzbpKUvLJnIswQQK1DsEz04ZVJmH";
	public static final String secretKey = "_MaxW0H-jccNexOZGFctLUAVmZVBqXs7N3C7Wodh";
	public static final String bucket = "avatar";

	public static void main(String[] args) {  
		  String algorithmName = "md5";  
		  String username = "15570353396@163.com";  
		  String password = "111111";  
		  String salt1 = username;  
		  String salt2 = new SecureRandomNumberGenerator().nextBytes().toHex();  
		  int hashIterations = 3;  
		  SimpleHash hash = new SimpleHash(algorithmName, password,  salt1 + salt2, hashIterations);  
		  String encodedPassword = hash.toHex();  
		  System.out.println(encodedPassword.length());  
		  System.out.println(salt2.length());  
		  System.out.println(String.valueOf(System.currentTimeMillis()).toString().length());
		  
//		   String username1 = "liu"; //用户名及salt1  
//		    String password1 = "202cb962ac59075b964b07152d234b70"; //加密后的密码  
//		    String salt21 = "202cb962ac59075b964b07152d234b70";  
//		SimpleAuthenticationInfo ai =   
//		        new SimpleAuthenticationInfo(username, password, getName());  
//		    ai.setCredentialsSalt(ByteSource.Util.bytes(username+salt2)); //盐是用户名+随机数  
		        
	} 
	
}
