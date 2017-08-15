package com.helper.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.apache.log4j.Logger;
import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.ValidatingSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alibaba.druid.util.StringUtils;
import com.helper.model.User;
import com.helper.model.UserInfo;
import com.helper.service.UserInfoService;
import com.helper.util.RegexUtils.RegexUtil;
import com.helper.util.shiroSessionUtil.SessionUserManager;

/**
 * 2017/8/09
 * @author gkb
 * 我的信息Controller
 */
@Controller
public class UserInfoController {
	
	private static Logger log = Logger.getLogger(UserInfoController.class);
	
	@Autowired(required=true)
	UserInfoService userInfoService;
	
	@RequestMapping(value="sendUserInfo.do",method=RequestMethod.POST)
	public String sendUserInfo(HttpServletRequest request,@Param(value="realName") String realName,@Param(value="gender") String gender,@Param(value="birthday") String birthday
			,@Param(value="age") String age,@Param(value="school") String school,@Param(value="company") String company,@Param(value="career") String career,
			@Param(value="workingDirection") String workingDirection,@Param(value="hometown") String hometown,@Param(value="QQ") String QQ,
			@Param(value="specialty") String specialty,@Param(value="level") String level,@Param(value="serviceItems") String serviceItems,@Param(value="serviceTime") String serviceTime,
			@Param(value="serviceModel") String serviceModel,@Param(value="amount") String amount,@Param(value="accountsModel") String accountsModel,
			@Param(value="prov") String prov,@Param(value="city") String city,@Param(value="district") String district,@Param(value="intro") String intro,@Param(value="userid") String userid){
		String message = null;
		 
		if(SessionUserManager.isSessionOuttime()) {  
	        return "redirect:loginpage.do";  
	    }
		User user = (User)SessionUserManager.getSession().getAttribute("currentUser");
		if(user==null){
			return "redirect:loginpage.do";
		}
		// 判断userid不为空
		if(!StringUtils.isEmpty(userid)){
			if(user.getUserId()!=Integer.valueOf(userid).intValue()){
				message = "非法操作";
				request.setAttribute("message", message);
				return "admin_form_myProfile";
			}
		}	
		
		
		if(StringUtils.isEmpty(realName)){
			message = "真实姓名不能为空";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}else if(!RegexUtil.stringCheck(realName)){
			message = "真实姓名格式错误";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}else if(!RegexUtil.checkStrLength(realName, 1, 10)){
			message = "真实姓名格式错误,长度超出范围";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		} 
		
		if(StringUtils.isEmpty(gender)){
			message = "性别不能为空";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}else if(!RegexUtil.isInteger(gender)){
			message = "性别格式错误";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}else if(!RegexUtil.checkStrLength(gender, 1, 2)){
			message = "性别格式错误,长度超出范围";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		} 
		
		if(StringUtils.isEmpty(birthday)){
			message = "生日不能为空";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}else if(!RegexUtil.isValidDate(birthday)){
			message = "生日格式错误";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}else if(birthday.length()!=10){
			message = "生日格式错误,长度超出范围";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}
		
		if(StringUtils.isEmpty(age)){
			message="年龄不能为空";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}else if(!RegexUtil.isInteger(age)){
			message="年龄格式错误";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}else if(!RegexUtil.checkStrLength(age, 1, 3)){
			message = "年龄格式错误,长度超出范围";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}
		
		if(StringUtils.isEmpty(school)){
			message = "学校不能为空";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}else if(RegexUtil.isContainsSpecialChar(school)){
			message="公司格式错误,不能包含特殊字符";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}else if(!RegexUtil.checkStrLength(school, 1, 20)){
			message = "学校格式错误,长度超出范围";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}
		
		String companyTrim = null;
		if(!StringUtils.isEmpty(company)){
			if(RegexUtil.isContainsSpecialChar(company)){
				message="公司格式错误,不能包含特殊字符";
				request.setAttribute("message", message);
				return "admin_form_myProfile";
			}else if(!RegexUtil.checkStrLength(company, 1, 20)){
				message = "公司格式错误,长度超出范围";
				request.setAttribute("message", company);
				return "admin_form_myProfile";
			}else{
				companyTrim = company.trim();
			}
		}
	
		String careerTrim = null;
		if(!StringUtils.isEmpty(career)){
			if(RegexUtil.isContainsSpecialChar(career)){
				message="职业格式错误,不能包含特殊字符";
				request.setAttribute("message", message);
				return "admin_form_myProfile";
			}else if(!RegexUtil.checkStrLength(career, 1, 20)){
				message = "职业格式错误,长度超出范围";
				request.setAttribute("message", message);
				return "admin_form_myProfile";
			}else{
				careerTrim = career.trim();
			}
		}
		
		String workingDirectionTrim = null;
		if(!StringUtils.isEmpty(workingDirection)){
			if(RegexUtil.isContainsSpecialChar(workingDirection)){
				message="工作方向格式错误,不能包含特殊字符";
				request.setAttribute("message", message);
				return "admin_form_myProfile";
			}else if(!RegexUtil.checkStrLength(workingDirection, 1, 20)){
				message = "工作方向格式错误,长度超出范围";
				request.setAttribute("message", message);
				return "admin_form_myProfile";
			}else{
				workingDirectionTrim = workingDirection;
			}
		}
		
		if(StringUtils.isEmpty(hometown)){
			message ="籍贯不能为空";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}else if(RegexUtil.isContainsSpecialChar(hometown)){
			message="籍贯格式错误,不能包含特殊字符";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}else if(!RegexUtil.checkStrLength(hometown, 1, 10)){
			message = "籍贯格式错误,长度超出范围";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}
		
		if(StringUtils.isEmpty(QQ)){
			message ="QQ不能为空";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}else if(!RegexUtil.checkQQ(QQ)){
			message ="QQ格式错误";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}
		
		if(StringUtils.isEmpty(specialty)){
			message="爱好不能为空";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}else if(RegexUtil.isContainsSpecialChar(specialty)){
			message="爱好格式错误,不能包含特殊字符";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}else if(!RegexUtil.checkStrLength(specialty, 1, 10)){
			message = "爱好格式错误,长度超出范围";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}
		
		if(StringUtils.isEmpty(level)){
			message="熟练程度不能为空";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}else if(!RegexUtil.isInteger(level)){
			message="熟练程度格式错误";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}else if(!RegexUtil.checkStrLength(level, 1, 3)){
			message = "熟练程度格式错误,长度超出范围";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}
		
		if(StringUtils.isEmpty(serviceItems)){
			message="服务项目不能为空";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}else if(RegexUtil.isContainsSpecialChar(serviceItems)){
			message="服务项目格式错误,不能包含特殊字符";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}else if(!RegexUtil.checkStrLength(serviceItems, 1, 14)){
			message = "服务项目格式错误,长度超出范围";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}
		
		if(StringUtils.isEmpty(serviceTime)){
			message="服务时间段不能为空";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}else if(!RegexUtil.isInteger(serviceTime)){
			message="服务时间段格式错误";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}else if(!RegexUtil.checkStrLength(serviceTime, 1, 3)){
			message = "服务时间段格式错误,长度超出范围";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}
		
		if(StringUtils.isEmpty(serviceModel)){
			message = "服务模式不能为空";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}else if(!RegexUtil.isInteger(serviceModel)){
			message = "服务模式格式为空";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}else if(!RegexUtil.checkStrLength(serviceModel, 1, 3)){
			message = "服务模式格式错误,长度超出范围";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}
		
		if(StringUtils.isEmpty(amount)){
			message="结算金额不能为空";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}else if(!RegexUtil.isInteger(amount)){
			message = "结算金额格式错误";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}else if(!RegexUtil.checkStrLength(amount, 1, 8)){
			message = "结算金额格式错误,长度超出范围";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}
		
		if(StringUtils.isEmpty(accountsModel)){
			message="结算方式不能为空";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}else if(!RegexUtil.isInteger(accountsModel)){
			message = "结算方式格式错误";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}else if(!RegexUtil.checkStrLength(accountsModel, 1, 3)){
			message = "结算方式格式错误,长度超出范围";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}
		 
		if(StringUtils.isEmpty(prov)||StringUtils.isEmpty(city)||StringUtils.isEmpty(district)){
			message ="所在地不能空";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}else if(RegexUtil.isContainsSpecialChar(prov)||RegexUtil.isContainsSpecialChar(city)||RegexUtil.isContainsSpecialChar(district)){
			message ="所在地格式错误";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}else if(!RegexUtil.checkStrLength(prov, 1, 8)||!RegexUtil.checkStrLength(city, 1, 10)||!RegexUtil.checkStrLength(district, 1, 10)){
			message = "所在地格式错误,长度超出范围";
			request.setAttribute("message", message);
			return "admin_form_myProfile";
		}
		
		String introTrim = null;
		if(!StringUtils.isEmpty(intro)){
			if(!RegexUtil.checkStrLength(intro, 1, 250)){
				message ="简介字数超出范围";
				request.setAttribute("message", message);
				return "admin_form_myProfile";
			}else{
				introTrim = intro.trim();
			}
		}
		
		
		
		
		UserInfo userInfo = new UserInfo();
		userInfo.setUserId(user.getUserId());
		userInfo.setRealName(realName.trim());
		userInfo.setGender(Integer.valueOf(gender.trim()).intValue());
		userInfo.setBirthday(birthday);
		userInfo.setAge(Integer.valueOf(age.trim()).intValue());
		userInfo.setHometown(hometown.trim());
		userInfo.setSchool(school.trim());
		userInfo.setCompany(companyTrim);
		userInfo.setCareer(careerTrim);
		userInfo.setWorkingDirection(workingDirectionTrim);
		userInfo.setQQ(Integer.valueOf(QQ.trim()).intValue());
		userInfo.setProv(prov.trim());
		userInfo.setCity(city.trim());
		userInfo.setDistrict(district.trim());
		userInfo.setIntro(introTrim);
		userInfo.setSpecialty(specialty.trim());
		userInfo.setLevel(Integer.valueOf(level.trim()).intValue());
		userInfo.setServiceItems(serviceItems.trim());
		userInfo.setServiceTime(Integer.valueOf(serviceTime.trim()));
		userInfo.setServiceModel(Integer.valueOf(serviceModel.trim()));
		userInfo.setAmount(Integer.valueOf(amount.trim()).intValue());
		userInfo.setAccountsModel(Integer.valueOf(accountsModel.trim()).intValue());
		
		if(StringUtils.isEmpty(userid)){
			userInfo.setCreateUser(user.getUsername());
			userInfo.setCreateTime(System.currentTimeMillis());
			if(userInfoService.addUserInfo(userInfo)==1){
				message = "新增成功！";
				request.setAttribute("message", message);
				return "admin_form_myProfile";
			}
		}else{
			userInfo.setUpdateUser(user.getUsername());
			if(1==userInfoService.updateUserInfo(userInfo)){
				message = "修改成功！";
				request.setAttribute("message", message);
				return "admin_form_myProfile";
			}
		}
		
		message = "未知错误";
		request.setAttribute("message", message);
		return "admin_form_myProfile";
	}

	public UserInfoService getUserInfoService() {
		return userInfoService;
	}

	public void setUserInfoService(UserInfoService userInfoService) {
		this.userInfoService = userInfoService;
	} 
	
	 
}
