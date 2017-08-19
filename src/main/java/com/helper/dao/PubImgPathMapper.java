package com.helper.dao;

import org.springframework.stereotype.Repository;

import com.helper.model.PubImgPath;
import com.helper.model.PublishSkill;
import com.helper.model.User;
import com.helper.model.UserInfo;


@Repository
public interface PubImgPathMapper {
	
	public void addPubImgPath(PubImgPath pubImgPath);
	
	public int addPublishSkill(PublishSkill publishSkill);
	
	public int updatePubImgPath(Integer publishId,String username);
}
	