package com.helper.service.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.helper.dao.UserMapper;
import com.helper.service.HeadIconServcie;

@Service
public class HeadIconServcieImpl implements HeadIconServcie{

	
	@Autowired(required=true)
	private UserMapper mapper;
	
	@Override
	public int updateUserAvatra(String avatarUrl,String username) {
		return mapper.updateUserAvatra(avatarUrl, username);
	}

	public UserMapper getMapper() {
		return mapper;
	}

	public void setMapper(UserMapper mapper) {
		this.mapper = mapper;
	}
	
}
