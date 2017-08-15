package com.helper.model;

 

public class BaseModel {

	protected long createTime = System.currentTimeMillis(); // 创建日期

	protected String createUser = "system"; // 备注

	protected String updateUser = "system"; // 备注

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

	

//	protected Integer del_flag = 0; // 删除标记（0：正常；1：删除；2：审核）
	
	
}
