package com.helper.service;

import com.helper.model.UserModel;

public interface UserService {

	public int addUser(UserModel userModel);

	public UserModel findByUsername(String username);
}
