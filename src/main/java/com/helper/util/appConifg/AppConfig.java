package com.helper.util.appConifg;

public class AppConfig {
	
	//发送短信验证码地址：网易云
	final public static String SEND_CODE_URL = "https://api.netease.im/sms/sendcode.action";
	//网易云信分配的账号，请替换你在管理后台应用下申请的Appkey
	final public static String APP_KEY ="95996123e8f584be15668cbb647eb619";
	//网易云信分配的密钥，请替换你在管理后台应用下申请的appSecret
	final public static String APP_SECRET="d01542c83fd6";
	//随机数
	final public static String NONCE="123456";
    //短信模板ID
    final public static String TEMPLATEID="3078037";
    //手机号
    final public static String MOBILE="13767412438";
    //验证码长度，范围4～10，默认为4
    final public static String CODELEN="6";
    //验证短信验证码地址：网易云
	final public static String VERIFY_CODE_URL = "https://api.netease.im/sms/verifycode.action";
	
	
}
