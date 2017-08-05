<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="utf-8">
<head>
	<title>VENUS</title>
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 	<link rel="stylesheet" href="assets/css/amazeui.min.css"/> 
 	<link rel="stylesheet" href="assets/css/amazeui.address.min.css"/>
	<script src="assets/js/address.min.js"></script>
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
                                    <label for="user-name" class="am-u-sm-2 am-form-label">姓名</label>
                                    <div class="am-u-sm-4">
                                        <input type="text" id="user-name"  minlength="5" placeholder="姓名 / Name" required/>
                                        <small>输入你的名字，让我们记住你。</small>
                                    </div>
                                    <label for="user-gender" class="am-u-sm-2 am-form-label">性别</label>
                                    <div class="am-u-sm-4">
                                        <select id="user-gender" required>
                                         <option  value="">请选择性别</option>
										  <option value="volvo">男性</option>
										  <option value="saab">女性</option>
										  <option value="opel">两性</option>
										  <option value="audi">无性</option>
										  <option value="audi">其他</option>
										</select>
                                    </div>
                                </div>
                                
                               <div class="am-form-group">
                                    <label for="user-birthday" class="am-u-sm-2 am-form-label">生日</label>
                                    <div class="am-u-sm-4">
                                        <!-- <input type="text" id="user-birthday" placeholder="生日 / Birthday"> -->
                                        <input type="text" id="user-birthday" placeholder="生日 / Birthday" class="am-form-field tpl-form-no-bg" data-am-datepicker="" readonly/>
                                        <small>生日为必填</small>
                                    </div>
                                    
                                    <label for="user-hometown" class="am-u-sm-2 am-form-label">籍贯</label>
                                    <div class="am-u-sm-4">
                                        <input type="text" id="user-hometown" placeholder="籍贯/ Hometown">
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label for="user-school" class="am-u-sm-2 am-form-label">学校</label>
                                    <div class="am-u-sm-4">
                                        <input type="text" id="user-school" placeholder="学校/ School">
                                    </div>
                                    
                                    <label for="user-Company" class="am-u-sm-2 am-form-label">公司</label>
                                    <div class="am-u-sm-4">
                                        <input type="text" id="user-Company" placeholder="公司/ Company">
                                    </div> 
                                </div>

								<div class="am-form-group">
                                    <label for="user-career" class="am-u-sm-2 am-form-label">职业</label>
                                    <div class="am-u-sm-4">
                                        <input type="text" id="user-career" placeholder="职业/ Career">
                                    </div>
                                    
                                    <label for="user-Company" class="am-u-sm-2 am-form-label">方向</label>
                                    <div class="am-u-sm-4">
                                        <input type="text" id="user-Company" placeholder="方向/ Working direction">
                                    </div>
                                </div>

								<div class="am-form-group">
                                    <label for="user-email" class="am-u-sm-2 am-form-label">邮箱</label>
                                    <div class="am-u-sm-4">
                                        <input type="text" id="user-email" placeholder="邮箱/ Email">
                                    </div>
                                    
                                    <label for="user-QQ" class="am-u-sm-2 am-form-label">QQ</label>
                                    <div class="am-u-sm-4">
                                        <input type="text" id="user-QQ" placeholder="QQ/ facebook">
                                    </div>
                                </div>  

								<div class="am-form-group">
                                    <label for="user-telephone" class="am-u-sm-2 am-form-label">手机</label>
                                    <div class="am-u-sm-4">
                                        <input type="text" id="user-telephone" placeholder="手机/ Phone">
                                    </div>
                                    
                                    <label for="user-PhoneVerificationCode" class="am-u-sm-2 am-form-label">手机验证码</label>
                                    <div class="am-u-sm-2">
                                    		<div class="am-form-group">
                                    			<input  type="text" for="getPhoneVerificationCode" class="am-u-sm-12" id="user-PhoneVerificationCode" placeholder="手机验证码/ Phone Verification Code" />
                                    		</div>
                                    </div>
                                    <div class="am-u-sm-2">
                                    				<button type="button" id="getPhoneVerificationCode" class=" am-btn am-btn-primary">获取手机验证码</button>
                                    </div>
								</div>

                                <div class="am-form-group "  id="address1-form">
                                    <label for="user-intro" class="am-u-sm-2 am-form-label">目前在</label>
                                    <div class="am-u-sm-10">
                                    	<div class="row">
                                    		<div class="am-u-sm-3">
                                    			<input type="text" name="prov" readonly>
                                    		</div>
                                    		<div class="am-u-sm-3">
                                    			<input type="text" name="city" readonly>
                                    		</div>
                                    		<div class="am-u-sm-3">
                                    			<input type="text" name="district" readonly>
                                    		</div>
                                    		<div class="am-u-sm-3">
                                    			<button type="button" id="addressChoose" class="am-btn am-btn-block am-margin-bottom-sm">
													<i class="am-icon am-icon-home"></i> 
												</button>
                                    		</div>
                                    	</div>
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label for="user-intro" class="am-u-sm-2 am-form-label">简介 / Intro</label>
                                    <div class="am-u-sm-10">
                                        <textarea class="" maxlength="5" rows="5" id="user-intro" placeholder="输入个人简介"></textarea>
                                        <small>250字以内写出你的一生...</small>
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
		
		<script src="assets/js/jquery.min.js" type="text/javascript" charset="utf-8"></script> 
		<script src="assets/js/amazeui.min.js" type="text/javascript" charset="utf-8"></script>  
		<script src="assets/js/address.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			$(function() {
				document.addEventListener('touchmove', function (e) {
					e.preventDefault();
				}, false);
				//	自定义输出
				$("#addressChoose").address({
					customOutput: true,
					selectEnd: function(json,address) {
						for(var key in json) {
							$("#address1-form").find("input[name='" + key + "']").val(json[key]);
						}
					}
				}).on("provTap",function(event,activeli){
					console.log(activeli.text());
				}).on("cityTap",function(event,activeli){
					console.log(activeli.text());
				})
			});
		</script>
</body>
</html>