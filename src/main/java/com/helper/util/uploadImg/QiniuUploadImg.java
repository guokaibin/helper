package com.helper.util.uploadImg;

import org.apache.log4j.Logger;

import com.google.gson.Gson;
import com.helper.model.UserModel;
import com.helper.util.appConifg.AppConfig;
import com.qiniu.common.QiniuException;
import com.qiniu.common.Zone;
import com.qiniu.http.Response;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import com.qiniu.storage.model.DefaultPutRet;
import com.qiniu.util.Auth;

public class QiniuUploadImg {
	
	private static Logger log = Logger.getLogger(QiniuUploadImg.class);
	
	public DefaultPutRet updateImgForQiniu(byte[] uploadBytes,UserModel user){
		
		String ImgNamePre = String.valueOf(System.currentTimeMillis()).toString();

		//构造一个带指定Zone对象的配置类
		Configuration cfg = new Configuration(Zone.zone2());
		//...其他参数参考类注释
		UploadManager uploadManager = new UploadManager(cfg);
		//默认不指定key的情况下，以文件内容的hash值作为文件名
		String key = ImgNamePre + user.getUsername();
		
	    Auth auth = Auth.create(AppConfig.accessKey, AppConfig.secretKey);
	    String upToken = auth.uploadToken(AppConfig.bucket);

		DefaultPutRet putRet=null;
	    
	    try {
	        Response response = uploadManager.put(uploadBytes, key, upToken);
	        //解析上传成功的结果
	        putRet = new Gson().fromJson(response.bodyString(), DefaultPutRet.class);
	        log.info(putRet.key);
	        log.info(putRet.hash);
	    } catch (QiniuException ex) {
	        Response r = ex.response;
	        log.info(r.toString());
	        try {
	            log.info(r.bodyString());
	        } catch (QiniuException ex2) {
	            log.info(ex2);
	        }
	    }
		return putRet;
	}
	
	
}
