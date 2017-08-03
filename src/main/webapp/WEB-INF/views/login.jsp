<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="utf-8">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>login</title>
  <meta name="description" content="login">
  <meta name="keywords" content="index">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="icon" type="image/png" href="assets/i/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <link rel="stylesheet" href="assets/css/amazeui.min.css" />
  <link rel="stylesheet" href="assets/css/admin.css">
  <link rel="stylesheet" href="assets/css/app.css">

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
				<form class="am-form" action="login.do" method="post">
					<fieldset>
						<div ><!-- class="am-form-group" -->
							<input name="username" type="email" class="" id="doc-ipt-email-1" placeholder="输入电子邮件">
						</div>
						<div ><!-- class="am-form-group" -->
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