package com.helper.service.serviceImpl;

import java.util.Set;

import org.springframework.stereotype.Service;

import com.helper.model.User;
import com.helper.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Override
	public Set<String> findRoles(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Set<String> findPermissions(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User findByUsername(String username) {
		// TODO Auto-generated method stub
		return null;
	}

}
