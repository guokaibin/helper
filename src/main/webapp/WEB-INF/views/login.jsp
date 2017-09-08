<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="utf-8">
<head>
	<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="后台主页">
    <meta name="keywords" content="index">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <title>login</title>
    <link rel="icon" type="image/png" href="assets/i/favicon_6.png">
    <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
    <link rel="stylesheet" href="assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="assets/css/admin.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <script src="assets/js/echarts.min.js"></script>
</head>
 
 <body data-type="login">
 
	<div class="am-g myapp-login">
		<div class="myapp-login-logo-block  tpl-login-max">
			<div class="myapp-login-logo-text">
				<div class="myapp-login-logo-text">
					Amaze UI<span> Login</span> <i class="am-icon-skyatlas"></i>
					
				</div>
			</div>
	
			<div class="login-font">
				<i>Log In </i> or <span style="color:red;">${error}</span>
			</div>
			<div class="am-u-sm-10 login-am-center">
				<form class="am-form" action="loginUser" method="post">
					<fieldset>
						<div class="am-form-group"><!--  -->
							<input name="username" type="text" class="" id="doc-ipt-email-1" placeholder="输入电子邮件">
						</div>
						<div class="am-form-group"><!--  -->
							<input name="password" type="password" class="" id="doc-ipt-pwd-1" placeholder="设置个密码吧">
						</div>
						<p><button type="submit" class="am-btn am-btn-default">登录</button></p>
					</fieldset>
				</form>
			</div>
		</div>
	</div>

  	<script src="assets/js/jquery.min.js"></script>
  	<script src="assets/js/amazeui.min.js"></script>
  	<script src="assets/js/app.js"></script>
  	
</body>
 
 
</html>