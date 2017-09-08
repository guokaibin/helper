package com.helper.dao;

import org.springframework.stereotype.Repository;

import com.helper.model.UserModel;


@Repository
public interface UserMapper {
	
	public int addrUserModel(UserModel userModel); 
	
	public UserModel findUserByUsername(String userName);
	
 
	
	
	
}
	