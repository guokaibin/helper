package com.helper.model;

import java.io.Serializable;

import com.helper.util.shiroSessionUtil.SessionUserManager;

/**
 * 存储技能信息
 * @author gkb
 *
 */
public class PublishSkill implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Integer id;
	
	private String reserverName;
	
	private String reserverNameType1;
	
	private String reserverNameType2;
	
	private String reserverNameType3;
	
	private Integer serverType;
	
	private Integer serverTime;
	
	private Integer price;
	
	private Integer countType;
	
	private String skillDescription;
	
	private Integer status;
	
	private long createTime; // 创建日期

	private String createUser;   

	private String updateUser;

	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getReserverName() {
		return reserverName;
	}

	public void setReserverName(String reserverName) {
		this.reserverName = reserverName;
	}

	public Integer getServerType() {
		return serverType;
	}

	public void setServerType(Integer serverType) {
		this.serverType = serverType;
	}

	public Integer getServerTime() {
		return serverTime;
	}

	public void setServerTime(Integer serverTime) {
		this.serverTime = serverTime;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Integer getCountType() {
		return countType;
	}

	public void setCountType(Integer countType) {
		this.countType = countType;
	}

	public String getSkillDescription() {
		return skillDescription;
	}

	public void setSkillDescription(String skillDescription) {
		this.skillDescription = skillDescription;
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

	public String getReserverNameType1() {
		return reserverNameType1;
	}

	public void setReserverNameType1(String reserverNameType1) {
		this.reserverNameType1 = reserverNameType1;
	}

	public String getReserverNameType2() {
		return reserverNameType2;
	}

	public void setReserverNameType2(String reserverNameType2) {
		this.reserverNameType2 = reserverNameType2;
	}

	public String getReserverNameType3() {
		return reserverNameType3;
	}

	public void setReserverNameType3(String reserverNameType3) {
		this.reserverNameType3 = reserverNameType3;
	}

	
	
}
