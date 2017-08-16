package com.helper.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.ValidatingSession;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.Gson;
import com.helper.model.UploadHeanIconReturnModel;
import com.helper.model.User;
import com.helper.realm.Constants;
import com.helper.util.shiroSessionUtil.SessionUserManager;
import com.qiniu.common.QiniuException;
import com.qiniu.common.Zone;
import com.qiniu.http.Response;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import com.qiniu.storage.model.DefaultPutRet;
import com.qiniu.util.Auth;

@Controller
public class UploaderImageController {
	
	private static Logger log = Logger.getLogger(RegisterController.class);
	
	@RequestMapping(value="uploadIndexImage.do")
	public void uploadIndexImage(HttpServletRequest request,HttpServletResponse response){
		log.info("进入上传方法");
		MultipartHttpServletRequest Murequest = (MultipartHttpServletRequest)request;
        Map<String, MultipartFile> files = Murequest.getFileMap();//得到文件map对象
        
        for(MultipartFile file:files.values()){
        	try {
				upload(file);
			} catch (IOException e) {
				e.printStackTrace();
			}
        }
	}
	
	
	
	public boolean upload(MultipartFile file) throws IOException{
	 
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
		        log.info(putRet.key);
		        log.info(putRet.hash);
		        
		        UploadHeanIconReturnModel returnModel = new  UploadHeanIconReturnModel();
		        returnModel.setKey(putRet.key);
		        returnModel.setHash(putRet.hash);
		        if(putRet.key.equals(key)){
		        	return true;
		        }
		        
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
		return false;
	}
	
	
}