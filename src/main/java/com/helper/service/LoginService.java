package com.helper.service;

import com.helper.model.User;

public interface LoginService {

	public User findByUsername(String username);
}
