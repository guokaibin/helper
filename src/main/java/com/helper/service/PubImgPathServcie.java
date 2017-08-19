package com.helper.service;

import com.helper.model.PubImgPath;
import com.helper.model.PublishSkill;


public interface PubImgPathServcie {
	
	public void addPubImgPath(PubImgPath pubImgPath);
	
	public int addPublishSkill(PublishSkill publishSkill);
	
	public int updatePubImgPath(Integer publishId,String username);
	
}
