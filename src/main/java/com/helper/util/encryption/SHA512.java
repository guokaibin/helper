package com.helper.util.encryption;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class SHA512 {

	
	public static String encrypte(String plainText, String algorithm) {     
		  MessageDigest md = null;     
		  try {     
		   md = MessageDigest.getInstance(algorithm);     
		  } catch (NoSuchAlgorithmException e) {     
		   e.printStackTrace();     
		  }     
		  md.update(plainText.getBytes());     
		  byte[] b = md.digest();     
		  StringBuilder output = new StringBuilder(32);     
		  for (int i = 0; i < b.length; i++) {     
		   String temp = Integer.toHexString(b[i] & 0xff);     
		   if (temp.length() < 2) {     
		    output.append("0");     
		   }     
		   output.append(temp);     
		  }     
		  return output.toString();     
	} 
	
}
