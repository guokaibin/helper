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
                        
                            <form class="am-form am-form-horizontal" action="sendUserInfo.do" id="userInfoform" method="post">
                                <div class="am-form-group">
                                	<input type="text" name="userid" value="${userInfo.userId }" />
                                    <label for="user-name" class="am-u-sm-2 am-form-label">姓名<small style="color:red">*</small></label>
                                    <div class="am-u-sm-4">
                                        <input type="text" id="user-name" name="realName" minlength="2" maxlength="10" value="${userInfo.realName }" pattern="[a-zA-Z\u4e00-\u9fa5][a-zA-Z0-9\u4e00-\u9fa5]+" placeholder="必填且不能包含特殊字符,字数在2-10位之间" required/>
                                        <!-- <small>输入你的名字，让我们记住你。</small> -->
                                    </div>
                                    <label for="user-gender" class="am-u-sm-2 am-form-label">性别<small style="color:red">*</small></label>
                                    <div class="am-u-sm-4">
                                    	<input type="hidden" id="genderForSelectCheck" value="${userInfo.gender }" />
                                        <select id="user-gender" name="gender"  required>
                                         	<option  value="">请选择性别</option>
										  	<option value="0">男性</option>
										  	<option value="1">女性</option>
										  	<option value="2">两性</option>
										  	<option value="3">无性</option>
										  	<option value="4">其他</option>
										</select>
                                    </div>
                                </div>
                                
                               <div class="am-form-group">
                                    <label for="user-birthday" class="am-u-sm-2 am-form-label">生日<small style="color:red">*</small></label>
                                    <div class="am-u-sm-4">
                                        <input type="text" id="user-birthday"   placeholder="必填" name="birthday" value="${userInfo.birthday }" class="am-form-field tpl-form-no-bg" data-am-datepicker="" 
                                        	pattern="^((?!0000)[0-9]{4}-((0[1-9]|1[0-2])-(0[1-9]|1[0-9]|2[0-8])|(0[13-9]|1[0-2])-(29|30)|(0[13578]|1[02])-31)|([0-9]{2}(0[48]|[2468][048]|[13579][26])|(0[48]|[2468][048]|[13579][26])00)-02-29)$"  required/>
                                         <small id="birthdayMsg" style="color:red"></small>
                                    </div>
                                    
                                    <label for="doc-vld-age-2" class="am-u-sm-2 am-form-label">身高(cm)<small style="color:red">*</small></label>
                                    <div class="am-u-sm-4">
                                        <input type="number" class="" name="age" id="doc-vld-age-2" value="${userInfo.age }" placeholder="必填" min="80" max="300" required/>
                                       
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                  	<label for="user-hometown" class="am-u-sm-2 am-form-label">籍贯<small style="color:red">*</small></label>
                                    <div class="am-u-sm-4">
                                        <input type="text" id="user-hometown" name="hometown" minlength="2" maxlength="8" value="${userInfo.hometown }"  pattern="[a-zA-Z\u4e00-\u9fa5][a-zA-Z0-9\u4e00-\u9fa5]+" placeholder="必填" required>
                                    </div>
                                    
                                    <label for="user-QQ" class="am-u-sm-2 am-form-label">QQ<small style="color:red">*</small></label>
                                    <div class="am-u-sm-4">
                                        <input type="number" id="user-QQ" name="QQ"  min="1000" max="999999999999"   value="${userInfo.QQ }"  placeholder="必填且在4位数字-12位数字之间" required>
                                    </div>
                                </div>  
                                
                                <div class="am-form-group">
                                    <label for="user-school" class="am-u-sm-2 am-form-label">学校<small style="color:red">*</small></label>
                                    <div class="am-u-sm-4">
                                        <input type="text" id="user-school" name="school" minlength="2" maxlength="10"  value="${userInfo.school }"  pattern="[a-zA-Z\u4e00-\u9fa5][a-zA-Z0-9\u4e00-\u9fa5]+" placeholder="必填不能包含特殊字符" required>
                                    </div>
                                    
                                    <label for="user-Company" class="am-u-sm-2 am-form-label">公司</label>
                                    <div class="am-u-sm-4">
                                        <input type="text" id="user-Company" name="company" minlength="2" maxlength="10" value="${userInfo.company }"   pattern="[a-zA-Z\u4e00-\u9fa5][a-zA-Z0-9\u4e00-\u9fa5]+" placeholder="不能包含特殊字符">
                                        <!-- <small>非必填</small> -->
                                    </div> 
                                </div>

								<div class="am-form-group">
                                    <label for="user-career" class="am-u-sm-2 am-form-label">职业</label>
                                    <div class="am-u-sm-4">
                                        <input type="text" id="user-career" name="career" minlength="2" maxlength="10" value="${userInfo.career }" pattern="[a-zA-Z\u4e00-\u9fa5][a-zA-Z0-9\u4e00-\u9fa5]+" placeholder="不能包含特殊字符">
                                        <!-- <small>非必填</small> -->
                                    </div>
                                    
                                    <label for="user-Company" class="am-u-sm-2 am-form-label">从事方向</label>
                                    <div class="am-u-sm-4">
                                        <input type="text" id="user-Company" minlength="2" maxlength="10"  value="${userInfo.workingDirection }" pattern="[a-zA-Z\u4e00-\u9fa5][a-zA-Z0-9\u4e00-\u9fa5]+" name="workingDirection" placeholder="不能包含特殊字符">
                                        <!-- <small>非必填</small> -->
                                    </div>
                                </div>	
                                
                                <div class="am-form-group">
                                    <label for="user-Specialty" class="am-u-sm-2 am-form-label">技能/爱好<small style="color:red">*</small></label>
                                    <div class="am-u-sm-4">
                                        <input type="text" id="user-Specialty" minlength="2" maxlength="8" value="${userInfo.specialty }"  pattern="[a-zA-Z\u4e00-\u9fa5][a-zA-Z0-9\u4e00-\u9fa5]+" name="specialty" placeholder="必填且不能包含特殊字符" required>
                                    </div>
                                    <label for="user-level" class="am-u-sm-2 am-form-label">程度<small style="color:red">*</small></label>
                                    <div class="am-u-sm-4">
                                    	<input type="hidden" id="levelForSelectCheck" value="${userInfo.level }" />
                                        <select id="user-level" name="level"  required>
                                         	<option  value="">请选择熟练程度</option>
										  	<option value="0">一般</option>
										  	<option value="1">良好</option>
										  	<option value="2">熟练</option>
										  	<option value="3">精通</option>
										</select>
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label for="user-serviceItems" class="am-u-sm-2 am-form-label">服务项目<small style="color:red">*</small></label>
                                    <div class="am-u-sm-4">
                                        <input type="text" id="user-serviceItems" name="serviceItems" minlength="2" maxlength="10" value="${userInfo.serviceItems }"  pattern="[a-zA-Z\u4e00-\u9fa5][a-zA-Z0-9\u4e00-\u9fa5]+" placeholder="必填且不能包含特殊字符" required>
                                    </div>
                                    <label for="user-serviceTime" class="am-u-sm-2 am-form-label">服务时间<small style="color:red">*</small></label>
                                    <div class="am-u-sm-4">
                                    	<input type="hidden" id="serviceTimeForSelectCheck" value="${userInfo.serviceTime }" />
                                        <select id="user-serviceTime" name="serviceTime"  required>
                                         	<option  value="">请选择服务时间</option>
										  	<option value="1">工作日</option>
										  	<option value="11">工作日上午</option>
										  	<option value="12">工作日下午</option>
										  	<option value="13">工作日晚上</option>
										  	<option value="2">周末</option>
										  	<option value="21">周末上午</option>
										  	<option value="22">周末下午</option>
										  	<option value="23">周末晚上</option>
										  	<option value="3">每天</option>
										  	<option value="31">每天上午</option>
										  	<option value="32">每天下午</option>
										  	<option value="33">每天晚上</option>
										</select>
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label for="user-servicemodel" class="am-u-sm-2 am-form-label">服务方式<small style="color:red">*</small></label>
                                    <div class="am-u-sm-4">
                                    	<input type="hidden" id="serviceModelForSelectCheck" value="${userInfo.serviceModel }" />
                                        <select id="user-servicemodel" name="serviceModel"  required>
                                         	<option  value="">请选择服务方式</option>
										  	<option value="0">远程</option>
										  	<option value="1">面对面</option>
										</select>
                                    </div>
                                    
                                    <label  class="am-u-sm-2 am-form-label" >结算<small style="color:red">*</small></label>
                                    <div class="am-u-sm-4" >
                                    	<div class="row" >
                                    		<div class="am-u-sm-6">
                                    			<input type="number" name="amount"  min="0"  value="${userInfo.amount }" required>
                                    		</div>
                                    		<div class="am-u-sm-6">
                                    			<input type="hidden" id="accountsModelForSelectCheck" value="${userInfo.accountsModel }" />
	                                    		<select id="user-accountsModel" name="accountsModel" required>
		                                         	<option  value="">请选择结算方式</option>
												  	<option value="0">小时/￥</option>
												  	<option value="1">日/￥</option>
												  	<option value="2">月/￥</option>
												</select>
                                    		</div>
                                    	</div>
                                    </div>
                                </div> 

                                <div class="am-form-group "  id="address1-form">
                                    <label for="user-intro" class="am-u-sm-2 am-form-label">目前在<small style="color:red">*</small></label>
                                    <div class="am-u-sm-10">
                                    	<div class="row">
                                    		<div class="am-u-sm-3">
                                    			<input type="text" id="user-prov" name="prov" value="${userInfo.prov }"  readonly>
                                    		</div>
                                    		<div class="am-u-sm-3">
                                    			<input type="text" id="user-city" name="city" value="${userInfo.city }" readonly>
                                    		</div>
                                    		<div class="am-u-sm-3">
                                    			<input type="text" id="user-district" name="district" value="${userInfo.district }" readonly>
                                    		</div>
                                    		<div class="am-u-sm-3">
                                    			<button type="button" id="addressChoose" class="am-btn am-btn-block am-margin-bottom-sm">
													<i class="am-icon am-icon-home"></i> 
												</button>
                                    		</div>
                                    		<small id="addressChooseMsg" style="color:red"></small>
                                    	</div>
                                    </div>
                                </div>
                                
                               <div class="am-form-group">
                                    <label for="user-intro" class="am-u-sm-2 am-form-label">简介 / Intro</label>
                                    <div class="am-u-sm-10" id="wordCount">
                                        <textarea class="" minlength="10" maxlength="200" name="intro" rows="5" id="user-intro" value="${userInfo.intro }" placeholder="200字以内写出你的一生..."></textarea>
                                        <span class="wordwrap"><var class="word">200</var>/200</span>
                                    </div>
                               </div>
                                
                               <div class="am-form-group">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <button type="submit" id="btn_submit" onclick=""  class="am-btn am-btn-primary">保存修改</button>
                                        <small>&nbsp;&nbsp;&nbsp;${message }</small>
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
				
				var levelValue = $("#levelForSelectCheck").val();
				var genderValue = $("#genderForSelectCheck").val();
				var serviceTimeValue = $("#serviceTimeForSelectCheck").val();
				var serviceModelValue = $("#serviceModelForSelectCheck").val();
				var accountsModelValue = $("#accountsModelForSelectCheck").val();
				$("#user-gender").val(genderValue);
				$("#user-level").val(levelValue);
				$("#user-serviceTime").val(serviceTimeValue);
				$("#user-servicemodel").val(serviceModelValue);
				$("#user-accountsModel").val(accountsModelValue);
				
				
				var wordCount = $("#wordCount"),
	            textArea = wordCount.find("textarea"),
	            word = wordCount.find(".word");
		        //调用
		        statInputNum(textArea,word);
			});
			
			function statInputNum(textArea,numItem) {
		        var max = numItem.text(),
		            curLength;
		        textArea[0].setAttribute("maxlength", max);
		        curLength = textArea.val().length;
		        numItem.text(max - curLength);
		        textArea.on('input propertychange', function () {
		          numItem.text(max - $(this).val().length);
		        });
		    }
		</script>
</body>
</html>