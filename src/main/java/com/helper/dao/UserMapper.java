package com.helper.dao;

import org.springframework.stereotype.Repository;

import com.helper.model.UserModel;


@Repository
public interface UserMapper {
	
	
	public UserModel findByUsername(String userName);
	
 
	
	public int addrUserModel(UserModel userModel); 
	
}
	