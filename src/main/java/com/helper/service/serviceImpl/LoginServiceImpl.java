package com.helper.service.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.helper.dao.UserMapper;
import com.helper.model.User;
import com.helper.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	private UserMapper mapper;

	@Override
	public User loginUser(String email,String password) {
		return mapper.loginUser(email, password);
	}

	public UserMapper getMapper() {
		return mapper;
	}

	public void setMapper(UserMapper mapper) {
		this.mapper = mapper;
	}
	
	
}
