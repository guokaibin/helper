package com.helper.service.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.helper.dao.UserMapper;
import com.helper.model.UserModel;
import com.helper.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper userMapper;
	
	@Override
	public int addUser(UserModel userModel) {
		return 0;
	}

	@Override
	public UserModel findByUsername(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	
	
	public UserMapper getUserMapper() {
		return userMapper;
	}

	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	} 
	
	
}
