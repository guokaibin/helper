package com.helper.model;

import java.io.Serializable;

import com.helper.util.shiroSessionUtil.SessionUserManager;

public class ImgPathModel  implements Serializable{

	private static final long serialVersionUID = 1L;

	private Integer id;
	
	private Integer publishId;
	
	private Integer imgPath;
	
	private String username;
	
	private Integer status;
	
	protected long createTime = System.currentTimeMillis(); // 创建日期

	protected String createUser = SessionUserManager.getUsernamebySession();   

	protected String updateUser = "system";   
	
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getPublishId() {
		return publishId;
	}

	public void setPublishId(Integer publishId) {
		this.publishId = publishId;
	}

	public Integer getImgPath() {
		return imgPath;
	}

	public void setImgPath(Integer imgPath) {
		this.imgPath = imgPath;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public long getCreateTime() {
		return createTime;
	}

	public void setCreateTime(long createTime) {
		this.createTime = createTime;
	}

	public String getCreateUser() {
		return createUser;
	}

	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}

	public String getUpdateUser() {
		return updateUser;
	}

	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}
	
}
