<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" scope="request"></c:set>
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
 		::-webkit-input-placeholder { /* WebKit browsers */ 
		font-size:12px;
		} 
		:-moz-placeholder { /* Mozilla Firefox 4 to 18 */ 
		font-size:12px;
		} 
		::-moz-placeholder { /* Mozilla Firefox 19+ */ 
		font-size:12px;
		} 
		:-ms-input-placeholder { /* Internet Explorer 10+ */ 
		font-size:12px;
		}
 	</style>
    	
</head>
<body class="register-container">
    <div class="layout">
    
    
    	<!-- <div class="container" style="border-bottom:solid 1px; #000">
            <div class="header" >
              <div class="am-g">
                <div class="am-u-lg-2 am-u-sm-12">
                  <div class="logo" style="border:1px">
                    <a href=""><img src="assets/img/20170904185431.png" alt="" /></a>
                  </div>
                </div>
                <div class="am-u-md-10">
                  <div class="header-right am-fr">
                    <div class="header-contact">
                      <div class="header_contacts--item">
  											<div class="contact_mini">
  												<i style="color:#7c6aa6" class="contact-icon am-icon-phone"></i>
  												<strong>0 (855) 233-5385</strong>
  												<span>周一~周五, 8:00 - 20:00</span>
  											</div>
  										</div>
                      <div class="header_contacts--item">
  											<div class="contact_mini">
  												<i style="color:#7c6aa6" class="contact-icon am-icon-envelope-o"></i>
  												<strong>cn@yunshipei.com</strong>
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
          </div> -->
  
    
    <div class="register-box">
      <form action="registerUser.do" method="post" class="am-form">
        <fieldset>
          <legend>注册用户<p class="register-info">注册即表示您已同意我们的&nbsp;&nbsp;<a href="">服务条款</a></p></legend>

			  <div class="login-font">
					 <span style="color:red;" id="message">${error}</span>
			  </div>
		  
		  <div class="am-form-group">
            <div class="am-g">
              <div class="am-u-md-2 am-padding-0 am-text-right">
                <label for="doc-vld-name" class="register-name">用户名</label>
              </div>
              <div class="am-u-md-10">
                <input type="text" id="doc-vld-name" minlength="4"  placeholder="支持中文,英文,数字,下划线等字符组合,4-20字符"  name="name" required/>
              </div>
            </div>
          </div> 
          	
          <div class="am-form-group">
            <div class="am-g">
              <div class="am-u-md-2 am-padding-0 am-text-right">
                <label for="doc-vld-pwd" class="register-pwd">密码</label>
              </div>
              <div class="am-u-md-10">
                <input type="password" id="doc-vld-pwd" name="password" placeholder="建议字母,数字,和符号两种及以上的组合,6-20字符" pattern="^\d{6}$" required/>
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
		  
		  
		  <div class="am-form-group">
            <div class="am-g">
              <div class="am-u-md-2 am-padding-0 am-text-right">
                <label for="username" class="register-mobile" >手机号</label>
              </div>
              <div class="am-u-md-10">
                <input type="text"   minlength="3" placeholder="请输入手机号码" id="username" name="username" required/>
              </div>
            </div>
          </div>

		  <div class="am-form-group">
            <div class="am-g">
              <div class="am-u-md-2 am-padding-0 am-text-right">
                <label for="code" class="register-phone" style="font-size:14px;">短信验证码</label>
              </div>
              <div class="am-u-md-10">
              	<div class="row">
              		<div class="am-u-md-6 am-padding-0 am-text-right">
              			<input type="text" id="code" class="txt" name="verifycode" placeholder="请输入短信验证码" required />
              		</div>
              		<div class="am-u-md-6">
              			<button class="am-btn am-btn-success"   id="J_getCode">获取验证码</button>
						<button class="am-btn am-btn-default"   id="J_resetCode" disabled="disabled" style="display:none;"><span id="J_second">60</span>s重新获取</button>
              		</div>
              	</div>
              </div>
            </div>
          </div>

          <div class="am-g">
            <div class="am-u-md-6">
              <button class="am-btn am-btn-secondary" type="submit">注册</button>
            </div>
            <div class="am-u-md-6  am-text-right">
			  		<small><a href="">已有账号，去登录</a></small>
			</div>
          </div>
        </fieldset>
        
      </form>
    </div>

  </div>
	<script src="assets/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="assets/js/amazeui.min.js" type="text/javascript" charset="utf-8"></script>
    <script>
		var BASE_URL = '${ctx}';
	</script>
    <script type="text/javascript">
	  $(function(){  
	    $("#J_getCode").click(function(){  
	    	var a = $("#username").val();
	    	alert(a)
	    	checkPhone(); //验证手机号码
			if(isPhone){
				resetCode(); //倒计时
			    $.ajax({  
			        async:false,
			        type: "GET",
			        url: BASE_URL+"/sendPhoneVerifyCode.do" ,  
			        data: "username="+ $("#username").val() ,   
			        dataType: "text",  	
			        success:function(data){  
			          console.log(data);  
			        },  
			        error:function(err){  
			          console.log(err); 
			          
			        }  
			    }); 
			}else{
				$('#username').focus();
				return;
			}
	    
	   });  
	})  
	  
	var isPhone = 1;
	function getCode(e){
		checkPhone(); //验证手机号码
		if(isPhone){
			resetCode(); //倒计时
		}else{
			$('#username').focus();
		}
	}
	//验证手机号码
	function checkPhone(){
		var phone = $('#username').val();
		var pattern = /^1[0-9]{10}$/;
		isPhone = 1;
		if(phone == '') {
			alert('请输入手机号码');
			isPhone = 0;
			return;
		}
		if(!pattern.test(phone)){
			alert('请输入正确的手机号码');
			isPhone = 0;
			return;
		}
	}
	//倒计时
	function resetCode(){
		$('#J_getCode').hide();
		$('#J_second').html('60');
		$('#J_resetCode').show();
		var second = 5;
		var timer = null;
		timer = setInterval(function(){
			second -= 1;
			if(second >0 ){
				$('#J_second').html(second);
			}else{
				clearInterval(timer);
				$('#J_getCode').show();
				$('#J_resetCode').hide();
			}
		},1000);
	}
	</script>  
	
</body>
</html>