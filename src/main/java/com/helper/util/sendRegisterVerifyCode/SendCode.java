package com.helper.util.sendRegisterVerifyCode;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.ParseException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.apache.log4j.Logger;
import org.json.JSONObject;

import com.helper.controller.UserController;
import com.helper.util.appConifg.AppConfig;
 
//发送验证码
public class SendCode {
	
	private static Logger log = Logger.getLogger(UserController.class);
   
	//发送手机验证码
    public static String sendSMSCode(String mobile){
    	DefaultHttpClient httpClient = new DefaultHttpClient();
        HttpPost httpPost = new HttpPost(AppConfig.SEND_CODE_URL);
        String curTime = String.valueOf((new Date()).getTime() / 1000L);
        /*
         * 参考计算CheckSum的java代码，在上述文档的参数列表中，有CheckSum的计算文档示例
         */
        String checkSum = CheckSumBuilder.getCheckSum(AppConfig.APP_SECRET, AppConfig.NONCE, curTime);

        // 设置请求的header
        httpPost.addHeader("AppKey", AppConfig.APP_KEY);
        httpPost.addHeader("Nonce", AppConfig.NONCE);
        httpPost.addHeader("CurTime", curTime);
        httpPost.addHeader("CheckSum", checkSum);
        httpPost.addHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");
        log.info("checkSum:"+checkSum);
        // 设置请求的的参数，requestBody参数
        List<NameValuePair> nvps = new ArrayList<NameValuePair>();
        /*
         * 1.如果是模板短信，请注意参数mobile是有s的，详细参数配置请参考“发送模板短信文档”
         * 2.参数格式是jsonArray的格式，例如 "['13888888888','13666666666']"
         * 3.params是根据你模板里面有几个参数，那里面的参数也是jsonArray格式
         */
        nvps.add(new BasicNameValuePair("templateid", AppConfig.TEMPLATEID));
        nvps.add(new BasicNameValuePair("mobile", mobile));
        nvps.add(new BasicNameValuePair("codeLen", AppConfig.CODELEN));

        try {
			httpPost.setEntity(new UrlEncodedFormEntity(nvps, "utf-8"));
		} catch (UnsupportedEncodingException e) {
			log.info(e);
		}

        // 执行请求
        HttpResponse response = null;
		try {
			response = httpClient.execute(httpPost);
		} catch (ClientProtocolException e) {
			log.info(e);
		} catch (IOException e) {
			log.info(e);
		}
        /*
         * 1.打印执行结果，打印结果一般会200、315、403、404、413、414、500
         * 2.具体的code有问题的可以参考官网的Code状态表
         */
		String message = "";
        try {
        	message = EntityUtils.toString(response.getEntity(), "utf-8");
		} catch (ParseException e) {
			log.info(e);
		} catch (IOException e) {
			log.info(e);
		}
        if(message.equals(""))
        	return "手机验证码异常";
        	
        JSONObject obj = new JSONObject(message); 
        int result = obj.getInt("code");
        String resultMessage = resolveNetEAseJsonCode(result);
        return resultMessage;
    }
    
    
    //验证手机验证码是否过期，10分钟内有效
    public static String verifycode(String mobile,String code){
    	DefaultHttpClient httpClient = new DefaultHttpClient();
        HttpPost httpPost = new HttpPost(AppConfig.VERIFY_CODE_URL);
        String curTime = String.valueOf((new Date()).getTime() / 1000L);
        
        String checkSum = CheckSumBuilder.getCheckSum(AppConfig.APP_SECRET, AppConfig.NONCE, curTime);

        httpPost.addHeader("AppKey", AppConfig.APP_KEY);
        httpPost.addHeader("Nonce", AppConfig.NONCE);
        httpPost.addHeader("CurTime", curTime);
        httpPost.addHeader("CheckSum", checkSum);
        httpPost.addHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");

        List<NameValuePair> nvps = new ArrayList<NameValuePair>();
        nvps.add(new BasicNameValuePair("mobile", mobile));
        nvps.add(new BasicNameValuePair("code", code));

        try {
			httpPost.setEntity(new UrlEncodedFormEntity(nvps, "utf-8"));
		} catch (UnsupportedEncodingException e) {
			log.info(e);
		}

        HttpResponse response = null;
		try {
			response = httpClient.execute(httpPost);
		} catch (ClientProtocolException e) {
			log.info(e);
		} catch (IOException e) {
			log.info(e);
		}
		
		String message = "";
        try {
        	message = EntityUtils.toString(response.getEntity(), "utf-8");
		} catch (ParseException e) {
			log.info(e);
		} catch (IOException e) {
			log.info(e);
		}
        
        if(message.equals(""))
        	return "手机验证码异常";
        	
        JSONObject obj = new JSONObject(message); 
        int result = obj.getInt("code");
        String resultMessage = resolveNetEAseJsonCode(result);
        
        return resultMessage;
    }
    
    //解析网易json返回code
    public static String resolveNetEAseJsonCode(int code){
    	
    	String message="";
    	
    	switch(code){
	    	case 200:
	    		message ="200";//操作成功
	    		return message;
	    	case 201:
	    		message ="客户端版本不对，需升级sdk";
	    		return message;
	    	case 301:
	    		message ="被封禁";
	    		return message;
	    	case 302:
	    		message ="用户名或密码错误";
	    		return message;
	    	case 315:
	    		message ="IP限制";
	    		return message;
	    	case 403:
	    		message ="非法操作或没有权限";
	    		return message;
	    	case 404:
	    		message ="对象不存在";
	    		return message;
	    	case 405:
	    		message ="参数长度过长";
	    		return message;
	    	case 406:
	    		message ="对象只读";
	    		return message;
	    	case 408:
	    		message ="客户端请求超时";
	    		return message;
	    	case 413:
	    		message ="验证失败(短信服务)";
	    		return message;
	    	case 414:
	    		message ="参数错误";
	    		return message;
	    	case 415:
	    		message ="客户端网络问题";
	    		return message;
	    	case 416:
	    		message ="频率控制";
	    		return message;
	    	case 417:
	    		message ="重复操作";
	    		return message;
	    	case 418:
	    		message ="通道不可用(短信服务)";
	    		return message;
	    	case 419:
	    		message ="数量超过上限";
	    		return message;
	    	case 422:
	    		message ="账号被禁用";
	    		return message;
	    	case 431:
	    		message ="HTTP重复请求";
	    		return message;
	    	case 500:
	    		message ="服务器内部错误";
	    		return message;
	    	case 503:
	    		message ="服务器繁忙";
	    		return message;
	    	case 508:
	    		message ="消息撤回时间超限";
	    		return message;
	    	case 509:
	    		message ="无效协议";
	    		return message;
	    	case 514:
	    		message ="服务不可用";
	    		return message;
	    	case 998:
	    		message ="解包错误";
	    		return message;
	    	case 999:
	    		message ="打包错误";
	    		return message;
	    	default:
	    		message ="服务内部异常";
	    		return message;
    	}
    	
    }
    
    

  
}