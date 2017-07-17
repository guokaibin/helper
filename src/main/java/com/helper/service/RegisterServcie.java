package com.helper.service;

import com.helper.model.User;

public interface RegisterServcie {
	
	public int insertRegisterUser(User user);
	
	public int updateActivation(String userEmail,String code);
	
	public int insertUserNamePassword(String userName,String password,String userEmail);
}
