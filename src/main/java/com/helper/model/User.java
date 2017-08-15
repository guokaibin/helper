package com.helper.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.SimpleHash;



public class User  implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Integer userId;
	
	private String code;
	
	private String userEmail;
	
	private String username;
	
	private String password;
	
	private String authTime;
	
	private String createUser;
	
	private long createTime;
	
	private String updateUser; 
	
	private int status;
	
	private List<Long> roleIds; //拥有的角色列表
	
    private Boolean locked = Boolean.FALSE;
	
    private String salt;
    
    private String nickname;
    
    private String avatarUrl;
    
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
  
        User user = (User) o;  
  
        if (userId != null ? !userId.equals(user.userId) : user.userId != null)  
            return false;  
  
        return true;  
    }  
  
    @Override  
    public int hashCode() {  
        return userId != null ? userId.hashCode() : 0;  
    }  
  
    @Override  
    public String toString() {  
        return "User{" + "id=" + userId + ", username='" + username + '\''  
                + ", password='" + password + '\'' + ", salt='" + salt + '\''  
                + ", locked=" + locked + '}';  
    }  
    
    
    
	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
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

	public String getAuthTime() {
		return authTime;
	}

	public void setAuthTime(String authTime) {
		this.authTime = authTime;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
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

	public Boolean getLocked() {
		return locked;
	}

	public void setLocked(Boolean locked) {
		this.locked = locked;
	}

	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getAvatarUrl() {
		return avatarUrl;
	}

	public void setAvatarUrl(String avatarUrl) {
		this.avatarUrl = avatarUrl;
	}
	
	
}
