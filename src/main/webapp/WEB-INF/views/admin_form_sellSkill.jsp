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
    <title>VENUS</title>
    
    <!-- Set render engine for 360 browser -->
    <meta name="renderer" content="webkit">
    <!-- No Baidu Siteapp-->
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <!-- seting icon -->
    <link rel="icon" type="image/png" href="assets/img/book_logo.png">
    <!-- Add to homescreen for Chrome on Android -->
    <meta name="mobile-web-app-capable" content="yes">
    <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
    <!-- Add to homescreen for Safari on iOS -->
    <meta name="apple-mobile-web-app-capable" content="yes">
  	<meta name="apple-mobile-web-app-status-bar-style" content="black">
  	<meta name="apple-mobile-web-app-title" content="Amaze UI"/>
  	<link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
    <!-- Tile icon for Win8 (144x144 + tile color) -->
 	<meta name="msapplication-TileImage" content="assets/i/app-icon72x72@2x.png">
  	<meta name="msapplication-TileColor" content="#0e90d2">
 	
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
                        <span class="am-icon-code"></span>出售技能 
                    </div>
              </div>
           	  <div class="tpl-block ">
           	  	<div class="am-g tpl-amazeui-form">
           	  		<div class="am-u-sm-12 ">
           	  			<form class="am-form am-form-horizontal" action="sendUserInfo.do" id="userInfoform" method="post">
		                	 <div id="wrapper">
							        <div id="container">
							            <!--头部，相册选择和格式选择-->
							            <div id="uploader">
							                <div class="queueList">
							                    <div id="dndArea" class="placeholder">
							                        <div id="filePicker"></div>
							                        <p>或将照片拖到这里，单次最多可选300张</p>
							                    </div>
							                </div>
							                <div class="statusBar" style="display:none;">
							                    <div class="progress">
							                        <span class="text">0%</span>
							                        <span class="percentage"></span>
							                    </div><div class="info"></div>
							                    <div class="btns">
							                        <div id="filePicker2"></div><div class="uploadBtn">开始上传</div>
							                    </div>
							                </div>
							            </div>
							        </div>
	    					 </div>
	    					
	    					   <div class="am-form-group"  >
					            		  <label for="user-reservationSkill" class="am-u-sm-2 am-form-label am-text-secondary">预约技能</label>
					                      <div class="am-u-sm-10">
					                      		  <input id="area-input-1" type="text" name="area3" placeholder="请选择技能">
					                    		  <input type="hidden" name="area3Value">
					                              <!-- <input type="text" id="user-reservationSkill" class="js-pattern-mobile" placeholder="选择你可以赚钱的技能" required/> -->
					                      </div>
								  	</div>
					                <div  class="am-form-group">
					                 	 <label for="user-servicemodel" class="am-u-sm-2 am-form-label am-text-secondary">服务方式</label>
					                     <div class="am-u-sm-10">
					                          <input type="hidden" id="serviceModelForSelectCheck" />
					                          <select id="user-servicemodel" name="serviceModel"  required>
					                                         	<option  value="">请选择服务方式</option>
															  	<option value="0">远程</option>
															  	<option value="1">面对面</option>
											  </select>
					                     </div>
					                </div>
					                <div class="am-form-group ">
					                     <label  class="am-u-sm-2 am-form-label am-text-secondary" >均价</label>
					                     <div class="am-u-sm-10" >
					                          <div class="row am-form-inline " >
					                              <div class="am-u-sm-4">
					                                   <input type="number" name="amount"  min="0"   required>
					                              </div>
					                              <div class="am-u-sm-8">
						                                    <select id="user-accountsModel" name="accountsModel" ><!-- required -->
							                                     <option  value="">请选择结算方式</option>
																 <option value="0">小时/￥</option>
																 <option value="1">日/￥</option>
																 <option value="2">月/￥</option>
															</select>
					                               </div>
					                           </div>
					                      </div>
					                </div>  
					                <div class="am-form-group">
					                     <label for="user-intro" class="am-u-sm-2 am-form-label am-text-secondary ">技能详情</label>
					                     <div class="am-u-sm-10 wordCount" id="wordCount">
					                            <textarea class="" minlength="1" maxlength="64" name="intro" rows="2" id="user-intro" value="${userInfo.intro }" placeholder="此技能有多优秀?比如多少年经验。取得了什么成绩.获得了多少好评。。字数64字以内"  ></textarea><!-- required -->
					                            <span class="wordwrap"><var class="word">64</var>/64</span>
					                     </div>
					               	</div> 
					                <div  class="am-form-group" >
					                       <div class="am-u-sm-9 am-u-sm-push-3" >
					                            <button type="submit" class="am-btn am-btn-primary" onclick="subMit()">发布</button>
					                       </div>
					                </div>
	    					
    					</form>
    				</div>	
    			</div>		
              </div>
          </div>
	</div>
		
	<script type="text/javascript" src="assets/js/webuploader/jquery.js"></script>
    <script type="text/javascript" src="assets/js/webuploader/webuploader.js"></script>
    <script type="text/javascript" src="assets/js/webuploader/upload.js"></script>
 	<script>
	 	$(function(){
	 		var wordCount = $("#wordCount"),
	        textArea = wordCount.find("textarea"),
	        word = wordCount.find(".word");
	        //调用
	        statInputNum(textArea,word);
	 	})
	 	
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
	<script>
		var BASE_URL = '${ctx}';
	</script>
</body>




</html>