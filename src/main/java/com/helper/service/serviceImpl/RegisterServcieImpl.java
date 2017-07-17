package com.helper.service.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.helper.dao.UserMapper;
import com.helper.model.User;
import com.helper.service.RegisterServcie;
@Service
public class RegisterServcieImpl implements RegisterServcie{

	@Autowired(required=true)
	private UserMapper userMapper;
	
	public UserMapper getUserMapper() {
		return userMapper;
	}

	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}
	
	@Override
	public int insertRegisterUser(User user) {
		return userMapper.insertRegisterUser(user);
	}

	@Override
	public int updateActivation(String userEmail, String code) {
		return userMapper.updateActivation(userEmail, code);
 	}

	@Override
	public int insertUserNamePassword(String userName, String password,String userEmail) {
		return userMapper.insertUserNamePassword(userName, password,userEmail);
	}

}
