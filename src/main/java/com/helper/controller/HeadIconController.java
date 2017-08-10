package com.helper.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.ValidatingSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.helper.model.UploadHeanIconReturnModel;
import com.helper.model.User;
import com.helper.realm.Constants;
import com.helper.service.HeadIconServcie;
import com.helper.service.LoginService;
import com.helper.util.shiroSessionUtil.SessionManager;
import com.qiniu.common.QiniuException;
import com.qiniu.common.Zone;
import com.qiniu.http.Response;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import com.qiniu.storage.model.DefaultPutRet;
import com.qiniu.util.Auth;

@Controller
public class HeadIconController {
	
	private static Logger log = Logger.getLogger(RegisterController.class);
	

	@Autowired
	private HeadIconServcie service;
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value="upload.do",method=RequestMethod.POST)
	public String upload(HttpServletRequest request,@RequestParam("headIconFile") MultipartFile headIconFile) throws IOException{
		String message ="上传头像失败";
		if(headIconFile.isEmpty()){
			message ="请选择头像";
			request.setAttribute("message", message);
			return "admin_form_headIcon";
		}
		
		Session session = SessionManager.getSession();
		if(session instanceof ValidatingSession && !((ValidatingSession)session).isValid()) {  
	        return "redirect:loginpage.do";  
	    } 
		User user = (User)session.getAttribute("currentUser");
		if(user==null){
			return "redirect:loginpage.do";
		}
		
		long currentTimeMillis = System.currentTimeMillis();
		
		String ImgNamePre = String.valueOf(currentTimeMillis).toString();
		
		//构造一个带指定Zone对象的配置类
		Configuration cfg = new Configuration(Zone.zone2());
		//...其他参数参考类注释
		UploadManager uploadManager = new UploadManager(cfg);
		//默认不指定key的情况下，以文件内容的hash值作为文件名
		String key = ImgNamePre + user.getUsername();
		try {
		    byte[] uploadBytes = headIconFile.getBytes();
		    Auth auth = Auth.create(Constants.accessKey, Constants.secretKey);
		    String upToken = auth.uploadToken(Constants.bucket);

		    try {
		        Response response = uploadManager.put(uploadBytes, key, upToken);
		        //解析上传成功的结果
		        DefaultPutRet putRet = new Gson().fromJson(response.bodyString(), DefaultPutRet.class);
		        log.info(putRet.key);
		        log.info(putRet.hash);
		        
		        UploadHeanIconReturnModel returnModel = new  UploadHeanIconReturnModel();
		        returnModel.setKey(putRet.key);
		        returnModel.setHash(putRet.hash);
		        if(putRet.key.equals(key)){
		        	 message="上传头像成功";
		        }
		        request.setAttribute("message", message);
		        
		    } catch (QiniuException ex) {
		        Response r = ex.response;
		        log.info(r.toString());
		        try {
		            log.info(r.bodyString());
		        } catch (QiniuException ex2) {
		            log.info(ex2);
		        }
		    }
		} catch (UnsupportedEncodingException ex) {
		    log.info(ex);
		}
		
		String avatarUrl = Constants.AVATAR_URL+key;
		String username = user.getUsername();
		
		if(StringUtils.isEmpty(username)||StringUtils.isEmpty(avatarUrl)){
			return "redirect:loginpage.do";
		}
		
		
		int updateAvatarUrlResult = service.updateUserAvatra(avatarUrl,username);
		
		if(updateAvatarUrlResult==1){
			session.removeAttribute("currentUser");
			User currentUser = loginService.findByUsername(username); 
			session.setAttribute("currentUser", currentUser);
			return "admin_form_headIcon";
		}

		return "redirect:loginpage.do";
		
	}


	public HeadIconServcie getService() {
		return service;
	}


	public void setService(HeadIconServcie service) {
		this.service = service;
	}
	
	
	
}
