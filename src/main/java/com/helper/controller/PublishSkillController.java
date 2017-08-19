package com.helper.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.apache.log4j.Logger;
import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.ValidatingSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.alibaba.druid.util.StringUtils;
import com.google.gson.Gson;
import com.helper.model.PubImgPath;
import com.helper.model.PublishSkill;
import com.helper.model.UploadHeanIconReturnModel;
import com.helper.model.User;
import com.helper.realm.Constants;
import com.helper.service.PubImgPathServcie;
import com.helper.util.RegexUtils.RegexUtil;
import com.helper.util.shiroSessionUtil.SessionUserManager;
import com.qiniu.common.QiniuException;
import com.qiniu.common.Zone;
import com.qiniu.http.Response;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import com.qiniu.storage.model.DefaultPutRet;
import com.qiniu.util.Auth;

@Controller
public class PublishSkillController {
	
	private static Logger log = Logger.getLogger(RegisterController.class);
	
	@Autowired
	private PubImgPathServcie service;
	
	@RequestMapping(value="addPublishSkill.do",method=RequestMethod.POST)
	public String addPubSkill(HttpServletRequest request,@Param(value="area3Value") String area3Value,@Param(value="serviceModel") String serviceModel,@Param(value="serviceTime") String serviceTime
			,@Param(value="amount") String amount,@Param(value="accountsModel") String accountsModel,@Param(value="skillDescription") String skillDescription){
		String message = null;
		if(SessionUserManager.isSessionOuttime()) {  
	        return "redirect:loginpage.do";  
	    }
		User user = (User)SessionUserManager.getSession().getAttribute("currentUser");
		if(user==null){
			return "redirect:loginpage.do";
		}
		
		List idsList = (List)SessionUserManager.getSession().getAttribute("idsList");
		if(idsList==null||idsList.size()==0){
			message = "请至少上传一张照片!"; 
 			request.setAttribute("message", message);
 			return "admin_form_sellSkill";
		}
		
		if(StringUtils.isEmpty(area3Value)){
			message="预约不能为空";
			request.setAttribute("message", message);
			return "admin_form_sellSkill";
		}else if(!RegexUtil.checkStrLength(area3Value, 1, 20)){
			message = "预约技能格式错误,长度超出范围";
			request.setAttribute("message", message);
			return "admin_form_sellSkill";
		}
		
		if(StringUtils.isEmpty(serviceTime)){
			message="服务时间段不能为空";
			request.setAttribute("message", message);
			return "admin_form_sellSkill";
		}else if(!RegexUtil.isInteger(serviceTime)){
			message="服务时间段格式错误";
			request.setAttribute("message", message);
			return "admin_form_sellSkill";
		}else if(!RegexUtil.checkStrLength(serviceTime, 1, 3)){
			message = "服务时间段格式错误,长度超出范围";
			request.setAttribute("message", message);
			return "admin_form_sellSkill";
		}
		
		if(StringUtils.isEmpty(serviceModel)){
			message = "服务模式不能为空";
			request.setAttribute("message", message);
			return "admin_form_sellSkill";
		}else if(!RegexUtil.isInteger(serviceModel)){
			message = "服务模式格式为空";
			request.setAttribute("message", message);
			return "admin_form_sellSkill";
		}else if(!RegexUtil.checkStrLength(serviceModel, 1, 3)){
			message = "服务模式格式错误,长度超出范围";
			request.setAttribute("message", message);
			return "admin_form_sellSkill";
		}
		
		if(StringUtils.isEmpty(amount)){
			message="结算金额不能为空";
			request.setAttribute("message", message);
			return "admin_form_sellSkill";
		}else if(!RegexUtil.isInteger(amount)){
			message = "结算金额格式错误";
			request.setAttribute("message", message);
			return "admin_form_sellSkill";
		}else if(!RegexUtil.checkStrLength(amount, 1, 8)){
			message = "结算金额格式错误,长度超出范围";
			request.setAttribute("message", message);
			return "admin_form_sellSkill";
		}
		
		if(StringUtils.isEmpty(accountsModel)){
			message="结算方式不能为空";
			request.setAttribute("message", message);
			return "admin_form_sellSkill";
		}else if(!RegexUtil.isInteger(accountsModel)){
			message = "结算方式格式错误";
			request.setAttribute("message", message);
			return "admin_form_sellSkill";
		}else if(!RegexUtil.checkStrLength(accountsModel, 1, 3)){
			message = "结算方式格式错误,长度超出范围";
			request.setAttribute("message", message);
			return "admin_form_sellSkill";
		}
		
		String skillDescriptionTrim = null;
		if(!StringUtils.isEmpty(skillDescription.trim())){
			if(!RegexUtil.checkStrLength(skillDescription.trim(), 1, 64)){
				message ="简介字数超出范围";
				request.setAttribute("message", message);
				return "admin_form_sellSkill";
			}else{
				skillDescriptionTrim = skillDescription.trim();
			}
		}
		
		String[] area3ValueArr = area3Value.split(",");
		
		PublishSkill skill = new PublishSkill();
		skill.setReserverName(area3Value);
		skill.setReserverNameType1(area3ValueArr[0]);
		skill.setReserverNameType2(area3ValueArr[1]);
		skill.setReserverNameType3(area3ValueArr[2]);
		skill.setServerType(Integer.valueOf(serviceModel.trim()).intValue());
		skill.setServerTime(Integer.valueOf(serviceTime.trim()).intValue());
		skill.setPrice(Integer.valueOf(amount.trim()).intValue());
		skill.setCountType(Integer.valueOf(accountsModel.trim()).intValue());
		skill.setSkillDescription(skillDescriptionTrim);
		skill.setStatus(1);
		skill.setCreateUser(user.getUsername());
		skill.setCreateTime(System.currentTimeMillis());
		skill.setUpdateUser(user.getUsername());
		
		int addPublishSkillResult = service.addPublishSkill(skill);
		if(addPublishSkillResult!=1){
			message = "发生错误!";
			request.setAttribute("message", message);
			return "admin_form_sellSkill";
		}
		
		int updatePubImgPathResult = service.updatePubImgPath(skill.getId(), user.getUsername());
		if(updatePubImgPathResult == 0){
			message = "发生错误!";
			request.setAttribute("message", message);
			return "admin_form_sellSkill";
		}
		SessionUserManager.getSession().removeAttribute("idsList");
		message = "发布成功!";
		request.setAttribute("message", message);
		return "admin_form_sellSkill";
	}
	
	
	
	@RequestMapping(value="uploadIndexImage.do")
	public void uploadIndexImage(HttpServletRequest request,HttpServletResponse response){
		if(SessionUserManager.isSessionOuttime()) {  
	        return;  
	    }
		User user = (User)SessionUserManager.getSession().getAttribute("currentUser");
		if(user==null){
			return;
		}
		MultipartHttpServletRequest murequest = (MultipartHttpServletRequest)request;
        Map<String, MultipartFile> files = murequest.getFileMap();//得到文件map对象
        if(files==null||files.size()<1){
        	return;
        }
        List<Integer> idsList = new ArrayList<Integer>();
        for(MultipartFile file:files.values()){
        	try {
        		idsList.add(upload(file,user));
			} catch (IOException e) {
				e.printStackTrace();
			}
        }
        SessionUserManager.getSession().setAttribute("idsList", idsList);
	}
	
	
	
	
	public Integer upload(MultipartFile file,User user) throws IOException{
		long currentTimeMillis = System.currentTimeMillis();
		String ImgNamePre = String.valueOf(currentTimeMillis).toString();
		//构造一个带指定Zone对象的配置类
		Configuration cfg = new Configuration(Zone.zone2());
		//...其他参数参考类注释
		UploadManager uploadManager = new UploadManager(cfg);
		//默认不指定key的情况下，以文件内容的hash值作为文件名
		String key = ImgNamePre + SessionUserManager.getUsernamebySession();
		try {
		    byte[] uploadBytes = file.getBytes();
		    Auth auth = Auth.create(Constants.accessKey, Constants.secretKey);
		    String upToken = auth.uploadToken(Constants.bucket);
		    try {
		        Response response = uploadManager.put(uploadBytes, key, upToken);
		        //解析上传成功的结果
		        DefaultPutRet putRet = new Gson().fromJson(response.bodyString(), DefaultPutRet.class);
		        UploadHeanIconReturnModel returnModel = new  UploadHeanIconReturnModel();
		        returnModel.setKey(putRet.key);
		        returnModel.setHash(putRet.hash);
		    } catch (QiniuException ex) {
		        Response r = ex.response;
		        log.info(r.toString());
		        try {
		            log.info(r.bodyString());
		        } catch (QiniuException ex2) {
		            log.info(ex2);
		        }
		        return null;
		    }
		} catch (UnsupportedEncodingException ex) {
		    log.info(ex);
		    return null;
		}
		
		String imgPath = Constants.AVATAR_URL+key;
		
		PubImgPath path = new PubImgPath();
		path.setImgPath(imgPath);
		path.setUsername(user.getUsername()); 
		path.setStatus(1);
		path.setCreateUser(user.getUsername());
		path.setCreateTime(System.currentTimeMillis());
		path.setUpdateUser(user.getUsername());
		service.addPubImgPath(path);
		if(null!=path.getId()){
			return path.getId();
		}
		return null;
	}

	
	
	
	
	
	
	
	
	
	

	public PubImgPathServcie getService() {
		return service;
	}


	public void setService(PubImgPathServcie service) {
		this.service = service;
	}
	
}