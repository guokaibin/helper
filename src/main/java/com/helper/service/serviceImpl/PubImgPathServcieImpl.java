package com.helper.service.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.helper.dao.PubImgPathMapper;
import com.helper.model.PubImgPath;
import com.helper.service.PubImgPathServcie;

@Service
public class PubImgPathServcieImpl implements PubImgPathServcie{

	@Autowired
	private PubImgPathMapper mapper;
	
	@Override
	public void addPubImgPath(PubImgPath pubImgPath) {
		  mapper.addPubImgPath(pubImgPath);
	}

	public PubImgPathMapper getMapper() {
		return mapper;
	}

	public void setMapper(PubImgPathMapper mapper) {
		this.mapper = mapper;
	}

	
}
