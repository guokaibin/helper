<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="utf-8">
<head>
	<title>VENUS</title>
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 	<link rel="stylesheet" href="assets/css/amazeui.min.css"/> 
 	<link rel="stylesheet" href="assets/css/amazeui.address.min.css"/>
</head>
<body>

         <div class="tpl-content-wrapper">
            <div class="tpl-content-page-title">
                Amaze UI 表单
            </div>
            <ol class="am-breadcrumb">
                <li><a href="#" class="am-icon-home">首页</a></li>
                <li><a href="#">表单</a></li>
                <li class="am-active">Amaze UI 表单</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span> 我的基本资料  <small class="am-active">(请填写真实信息)</small>
                    </div>
                </div>
                <div class="tpl-block ">
                    <div class="am-g tpl-amazeui-form">
                        <div class="am-u-sm-12 am-u-md-9">
                        
                            <form class="am-form am-form-horizontal">

								<div class="am-form-group">
                                    <label for="user-telephone" class="am-u-sm-3 am-form-label">手机</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" id="user-telephone" class="js-pattern-mobile" placeholder="输入手机号" required/>
                                    </div>
								</div>
                                
                                <div class="am-form-group">
                                	<label for="user-PhoneVerificationCode" class="am-u-sm-3 am-form-label">手机验证码</label>
                                    <div class="am-u-sm-5">
                                    		<div class="am-form-group">
                                    			<input  type="text" for="getPhoneVerificationCode" class="am-u-sm-12" id="user-PhoneVerificationCode" placeholder="手机验证码/ Phone Verification Code" />
                                    		</div>
                                    </div>
                                    <div class="am-u-sm-4">
                                    				<button type="button" id="getPhoneVerificationCode" class=" am-btn am-btn-primary">获取手机验证码</button>
                                    </div>
                                </div>
                                
                                
                               <div class="am-form-group">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <button type="submit" class="am-btn am-btn-primary">保存修改</button>
                                    </div>
                               </div>
                            </form>
                            
                            
                        </div>
                    </div>
                </div>
            </div>
		</div>
	 
</body>
	<script src="assets/js/jquery.min.js" type="text/javascript" charset="utf-8"></script> 
 	<script>
		  if ($.AMUI && $.AMUI.validator) {
		    $.AMUI.validator.patterns.mobile = /^\s*1\d{10}\s*$/;
		  }
	</script>
</html>