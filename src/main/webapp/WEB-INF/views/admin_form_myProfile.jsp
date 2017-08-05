<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="utf-8">
<head>
	<title>VENUS</title>
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                                        <input type="text" id="user-name" placeholder="姓名 / Name">
                                        <small>输入你的名字，让我们记住你。</small>
                                    </div>
                                    <label for="user-gender" class="am-u-sm-2 am-form-label">性别</label>
                                    <div class="am-u-sm-4">
                                        <input type="text" id="user-gender" placeholder="性别/ Gender">
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
                                    
                                    <label for="user-where" class="am-u-sm-2 am-form-label">目前在</label>
                                    <div class="am-u-sm-4">
                                        <input type="text" id="user-where" placeholder="目前在/ Where i am">
                                        <small>输入你目前在那座城市。格式：国家/城市/(区/县/镇)/街道</small>
                                    </div>
                                </div>

								<div class="am-form-group">
                                    <label for="user-Company" class="am-u-sm-2 am-form-label">公司</label>
                                    <div class="am-u-sm-4">
                                        <input type="text" id="user-Company" placeholder="公司/ Company">
                                    </div>
                                    
                                    <label for="user-career" class="am-u-sm-2 am-form-label">职业</label>
                                    <div class="am-u-sm-4">
                                        <input type="text" id="user-career" placeholder="职业/ Career">
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

                                <div class="am-form-group">
                                    <label for="user-intro" class="am-u-sm-2 am-form-label">简介 / Intro</label>
                                    <div class="am-u-sm-10">
                                        <textarea class="" rows="5" id="user-intro" placeholder="输入个人简介"></textarea>
                                        <small>250字以内写出你的一生...</small>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <button type="button" class="am-btn am-btn-primary">保存修改</button>
                                    </div>
                                </div>
                                
                            </form>
                        </div>
                    </div>
                </div>
            </div>
		</div>
</body>
</html>