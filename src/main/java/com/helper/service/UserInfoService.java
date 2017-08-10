package com.helper.service;

import com.helper.model.UserInfo;

public interface UserInfoService {

	public int addUserInfo(UserInfo userInfo);
	
	public int updateUserInfo(UserInfo userInfo);
	
	public UserInfo getUserInfo(Integer userid);
}
