package com.helper.service.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.helper.dao.PubImgPathMapper;
import com.helper.model.PubImgPath;
import com.helper.model.PublishSkill;
import com.helper.service.PubImgPathServcie;

@Service
public class PubImgPathServcieImpl implements PubImgPathServcie{

	@Autowired
	private PubImgPathMapper mapper;
	
	public PubImgPathMapper getMapper() {
		return mapper;
	}

	public void setMapper(PubImgPathMapper mapper) {
		this.mapper = mapper;
	}
	
	@Override
	public void addPubImgPath(PubImgPath pubImgPath) {
		  mapper.addPubImgPath(pubImgPath);
	}

	@Override
	public int addPublishSkill(PublishSkill publishSkill) {
		return mapper.addPublishSkill(publishSkill);
	}

	@Override
	public int updatePubImgPath(Integer publishId,String username) {
		return mapper.updatePubImgPath( publishId, username);
	}
	
}
