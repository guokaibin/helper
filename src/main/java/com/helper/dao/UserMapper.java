package com.helper.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.helper.model.User;


@Repository
public interface UserMapper {
	
	public int insertRegisterUser(User user); 
	
	public int updateActivation(String userEmail, String code);
	
	public int insertUserNamePassword(@Param(value="userName") String userName,@Param(value="password") String password,@Param(value="userEmail") String userEmail);
	
	public User loginUser(@Param(value="email") String email,@Param(value="password") String password);
	
}
	