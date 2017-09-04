package com.helper.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.springframework.stereotype.Component;


@Component
public class UserModel  implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Integer id;
	
	private String name; 
	
	private String username;
	
	private String password;
	
	private String salt;
	
	private Integer age;
	
	private Integer gender;
	
	private String school;
	
	private String career;
	
	private String company;
	
	private String workingDirection;
	
	private String hometown;
	
	private String prov;
	
	private String city;
	
	private String district;
	
	private String intro;
	
	private String hobby;
	
	private Integer level;
	
	private String email;
	
	private String avatarUrl;
	
	private String createUser;
	
	private long createTime;
	
	private String updateUser; 
	
	private int locked;
	
	private String code;
	
	private String userEmail;
	
	private String ipAddress;
	
	private List<Long> roleIds; //拥有的角色列表
	
    
    public String getCredentialsSalt() {
        return username + salt;
    }

    public List<Long> getRoleIds() {
        if(roleIds == null) {
            roleIds = new ArrayList<Long>();
        }
        return roleIds;
    }

    public void setRoleIds(List<Long> roleIds) {
        this.roleIds = roleIds;
    }
    
    
    @Override  
    public boolean equals(Object o) {  
        if (this == o)  
            return true;  
        if (o == null || getClass() != o.getClass())  
            return false;  
  
        UserModel user = (UserModel) o;  
  
        if (id != null ? !id.equals(user.id) : user.id != null)  
            return false;  
  
        return true;  
    }  
  
    @Override  
    public int hashCode() {  
        return id != null ? id.hashCode() : 0;  
    }  
  
    @Override  
    public String toString() {  
        return "User{" + "id=" + id + ", username='" + username + '\''  
                + ", password='" + password + '\'' + ", salt='" + salt + '\''  
                + ", locked=" + locked + '}';  
    }  
    
    
    
	 
	public String getCreateUser() {
		return createUser;
	}

	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}

	public long getCreateTime() {
		return createTime;
	}

	public void setCreateTime(long createTime) {
		this.createTime = createTime;
	}

	public String getUpdateUser() {
		return updateUser;
	}

	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}


	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getLocked() {
		return locked;
	}

	public void setLocked(int locked) {
		this.locked = locked;
	}

	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

 
	public String getAvatarUrl() {
		return avatarUrl;
	}

	public void setAvatarUrl(String avatarUrl) {
		this.avatarUrl = avatarUrl;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public Integer getGender() {
		return gender;
	}

	public void setGender(Integer gender) {
		this.gender = gender;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getCareer() {
		return career;
	}

	public void setCareer(String career) {
		this.career = career;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getWorkingDirection() {
		return workingDirection;
	}

	public void setWorkingDirection(String workingDirection) {
		this.workingDirection = workingDirection;
	}

	public String getHometown() {
		return hometown;
	}

	public void setHometown(String hometown) {
		this.hometown = hometown;
	}

	public String getProv() {
		return prov;
	}

	public void setProv(String prov) {
		this.prov = prov;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public String getHobby() {
		return hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	public Integer getLevel() {
		return level;
	}

	public void setLevel(Integer level) {
		this.level = level;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getIpAddress() {
		return ipAddress;
	}

	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}
	
	
}
