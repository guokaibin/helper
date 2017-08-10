package com.helper.dao;

import org.springframework.stereotype.Repository;

import com.helper.model.User;
import com.helper.model.UserInfo;


@Repository
public interface UserInfoMapper {
	
	public int addUserInfo(UserInfo userInfo);
	
}
	