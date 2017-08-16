package com.helper.dao;

import org.springframework.stereotype.Repository;

import com.helper.model.PubImgPath;
import com.helper.model.User;
import com.helper.model.UserInfo;


@Repository
public interface PubImgPathMapper {
	
	public void addPubImgPath(PubImgPath pubImgPath);
	
}
	