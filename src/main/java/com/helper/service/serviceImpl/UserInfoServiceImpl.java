package com.helper.service.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.helper.dao.UserInfoMapper;
import com.helper.model.User;
import com.helper.model.UserInfo;
import com.helper.service.UserInfoService;

@Service
public class UserInfoServiceImpl implements UserInfoService{

	@Autowired(required=true)
	UserInfoMapper mapper;
	
	@Override
	public int addUserInfo(UserInfo userInfo) {
		return mapper.addUserInfo(userInfo);
	}

	@Override
	public UserInfo getUserInfo(Integer userid) {
		return mapper.getUserInfo(userid);
	}

	@Override
	public int updateUserInfo(UserInfo userInfo) {
		return mapper.updateUserInfo(userInfo);
	}
	
	
	
	
	
	
	
	public UserInfoMapper getMapper() {
		return mapper;
	}

	public void setMapper(UserInfoMapper mapper) {
		this.mapper = mapper;
	}
}
