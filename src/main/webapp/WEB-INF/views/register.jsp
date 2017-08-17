<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="utf-8">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="后台主页">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>register</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="assets/img/book_logo.png">
    <meta name="mobile-web-app-capable" content="yes">
    <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-capable" content="yes">
  	<meta name="apple-mobile-web-app-status-bar-style" content="black">
  	<meta name="apple-mobile-web-app-title" content="Amaze UI"/>
  	<link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
 	<meta name="msapplication-TileImage" content="assets/i/app-icon72x72@2x.png">
  	<meta name="msapplication-TileColor" content="#0e90d2">
    <link rel="stylesheet" href="assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="assets/css/common.min.css">
    <link rel="stylesheet" href="assets/css/other.min.css">
    <style>
    	.login-container{width:100%;height:100%;margin-top:150px;background:url(assets/img/login-bg.jpg);position:relative}
    	.register-container{width:100%;height:100%;background:url(assets/img/login-bg.jpg)}.register-container .register-box{width:442px;height:auto;margin:122px auto 0}
    </style>
 
    	
</head>
<body class="register-container">
    <div class="layout">
    <!--===========layout-header================-->
    <div class="layout-header am-hide-sm-only">
      <!--topbar start-->
      <div class="topbar">
        <div class="container">
          <div class="am-g">
            <div class="am-u-md-3">
              <div class="topbar-left">
                <i class="am-icon-globe"></i>
                <div class="am-dropdown" data-am-dropdown>
                  <button class="am-btn am-btn-primary am-dropdown-toggle" data-am-dropdown-toggle>Language <span class="am-icon-caret-down"></span></button>
                  <ul class="am-dropdown-content">
                    <li><a href="#">English</a></li>
                    <li class="am-divider"></li>
                    <li><a href="#">Chinese</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="am-u-md-9">
              <div class="topbar-right am-text-right am-fr">
                Follow us
                <i class="am-icon-facebook"></i>
                <i class="am-icon-twitter"></i>
                <i class="am-icon-google-plus"></i>
                <i class="am-icon-pinterest"></i>
                <i class="am-icon-instagram"></i>
                <i class="am-icon-linkedin"></i>
                <i class="am-icon-youtube-play"></i>
                <i class="am-icon-rss"></i>
                <a href="./login.html">登录</a>
                <a href="./register.html">注册</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--topbar end-->

      <div class="header-box" data-am-sticky>
        <!--header start-->
          <div class="container">
            <div class="header">
              <div class="am-g">
                <div class="am-u-lg-2 am-u-sm-12">
                  <div class="logo">
                    <a href=""><img src="assets/img/book_logo.png" class="am-fr" alt="" style="width:83px;height:83px;;margin: -24px 23px ;padding:1px;"  /></a>
                  </div>
                </div>
                <div class="am-u-md-10">
                  <div class="header-right am-fr">
                    <div class="header-contact">
                      <div class="header_contacts--item">
  											<div class="contact_mini">
  												<i style="color:#7c6aa6" class="contact-icon am-icon-phone"></i>
  												<strong>13767412438</strong>
  												<span>周一~周五, 8:00 - 20:00</span>
  											</div>
  										</div>
                      <div class="header_contacts--item">
  											<div class="contact_mini">
  												<i style="color:#7c6aa6" class="contact-icon am-icon-envelope-o"></i>
  												<strong>15570353396@163.com</strong>
  												<span>随时欢迎您的来信！</span>
  											</div>
  										</div>
                      <div class="header_contacts--item">
  											<div class="contact_mini">
  												<i style="color:#7c6aa6" class="contact-icon am-icon-map-marker"></i>
  												<strong>天使大厦,</strong>
  												<span>海淀区海淀大街27</span>
  											</div>
  										</div>
                    </div>
                    <a href="html/contact.html" class="contact-btn">
                      <button type="button" class="am-btn am-btn-secondary am-radius">联系我们</button>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        <!--header end-->
			<hr>
      </div>

    </div>
  



    <!--===========layout-container================-->
    <div class="register-box">
      <form action="" class="am-form" data-am-validator>
        <fieldset>
          <legend>注册用户<p class="register-info">注册即表示您已同意我们的&nbsp;&nbsp;<a href="">服务条款</a></p></legend>

          <div class="am-form-group">
            <div class="am-g">
              <div class="am-u-md-2 am-padding-0 am-text-right">
                <label for="doc-vld-name-2" class="register-name">用户名</label>
              </div>
              <div class="am-u-md-10">
                <input type="text" id="doc-vld-name-2" minlength="3"
                       placeholder="输入用户名（至少 3 个字符）" required/>
              </div>
            </div>
          </div>

		  <div class="am-form-group">
            <div class="am-g">
              <div class="am-u-md-2 am-padding-0 am-text-right">
                <label for="doc-vld-name-2" class="register-mobile" id="mobile">手机</label>
              </div>
              <div class="am-u-md-10">
                <input type="text" id="doc-vld-name-2" minlength="3" placeholder="请输入手机号码" required/>
              </div>
            </div>
          </div>

		  <div class="am-form-group">
            <div class="am-g">
              <div class="am-u-md-2 am-padding-0 am-text-right">
                <label for="doc-vld-name-2" class="register-phone">验证码</label>
              </div>
              <div class="am-u-md-10">
              	 
				    <div class="am-input-group">
				      <input type="text" class="am-form-field" id="doc-vld-name-2" minlength="3" placeholder="请输入验证码" required>
				      <span class="am-input-group-btn">
				        <input class="obtain  am-btn am-btn-default" id ="generate_code" type="button" value="获取验证码" />
				      </span>
				    </div>
				 
              </div>
            </div>
          </div>


          <div class="am-form-group">
            <div class="am-g">
              <div class="am-u-md-2 am-padding-0 am-text-right">
                <label for="doc-vld-pwd-1" class="register-pwd">密码</label>
              </div>
              <div class="am-u-md-10">
                <input type="password" id="doc-vld-pwd-1" placeholder="6 位数字的银行卡密码" pattern="^\d{6}$" required/>
              </div>
            </div>
          </div>

          <div class="am-form-group">
            <div class="am-g">
              <div class="am-u-md-2 am-padding-0 am-text-right">
                <label for="doc-vld-pwd-2">确认密码</label>
              </div>
              <div class="am-u-md-10">
                <input type="password" id="doc-vld-pwd-2" placeholder="请与上面输入的值一致" data-equal-to="#doc-vld-pwd-1" required/>
              </div>
            </div>
          </div>

          <div class="am-g">
            <div class="am-u-md-10">
              <button class="am-btn am-btn-secondary" type="submit">注册</button>
            </div>
          </div>
        </fieldset>
      </form>
    </div>

  </div>
	<script src="assets/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="assets/js/amazeui.min.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">  
	  $(function(){  
	    $("#generate_code").click(function(){  
	      var disabled = $("#generate_code").attr("disabled");  
	      if(disabled){  
	        return false;  
	      }  
	      /* if($("#mobile").val() == "" || isNaN($("#mobile").val()) || $("#mobile").val().length != 11 ){  
	        alert("请填写正确的手机号！");  
	        return false;  
	      }  */ 
	      
	      $.ajax({  
	        async:false,  
	        type: "GET",  
	        url: "register.do",  
	        data: {mobile:$("#mobile").val()},  
	        dataType: "json",  
	        async:false,  
	        success:function(data){  
	          console.log(data);  
	          settime();  
	        },  
	        error:function(err){  
	          console.log(err);  
	        }  
	      });   
	      
	    });  
	    var countdown=60;  
	    var _generate_code = $("#generate_code");  
	    function settime() {  
	      if (countdown == 0) {  
	        _generate_code.attr("disabled",false);  
	        _generate_code.val("获取验证码");  
	        countdown = 60;  
	        return false;  
	      } else {  
	        $("#generate_code").attr("disabled", true);  
	        _generate_code.val("重新发送(" + countdown + ")");  
	        countdown--;  
	      }  
	      setTimeout(function() {  
	        settime();  
	      },1000);  
	    }  
	  })  
	  
	</script>  
</body>
</html>