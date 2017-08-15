<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="utf-8">
<head>
	<title>VENUS</title>
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 	<!-- webupload 插件cdn -->
  	<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
    <link rel="stylesheet" type="text/css" href="assets/css/webUploaderCss/bootstrap-theme.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/webUploaderCss/style.css">
    <link rel="stylesheet" type="text/css" href="assets/css/webUploaderCss/demo.css">
    <link rel="stylesheet" type="text/css" href="assets/css/webUploaderCss/webuploader.css">
    <link rel="stylesheet" type="text/css" href="assets/css/amazeui.min.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/skillDataSourceCss/amazeui.areaselect.css" />
    <style type="text/css">
    	.jumbotron { background: transparent url(assets/img/webUploaderImg/banner.jpg) repeat-x 50% 0%; color: #fff; text-shadow: 1px 1px 1px #3b3262; margin-bottom: 0; }
    	.file-item .progress span { display: block; overflow: hidden; width: 0; height: 100%; background: #d14 url(assets/img/webUploaderImg/progress.png) repeat-x; -webit-transition: width 200ms linear; -moz-transition: width 200ms linear; -o-transition: width 200ms linear; -ms-transition: width 200ms linear; transition: width 200ms linear; -webkit-animation: progressmove 2s linear infinite; -moz-animation: progressmove 2s linear infinite; -o-animation: progressmove 2s linear infinite; -ms-animation: progressmove 2s linear infinite; animation: progressmove 2s linear infinite; -webkit-transform: translateZ(0); }
	 	#uploader .placeholder { min-height: 350px; padding-top: 178px; text-align: center; background: url(assets/img/webUploaderImg/image.png) center 93px no-repeat; color: #cccccc; font-size: 18px; position: relative; }
    	#uploader .filelist div.file-panel span { width: 24px; height: 24px; display: inline; float: right; text-indent: -9999px; overflow: hidden; background: url(assets/img/webUploaderImg/icons.png) no-repeat; margin: 5px 1px 1px; cursor: pointer; }
    	#uploader .filelist li p.progress span { display: none; overflow: hidden; width: 0; height: 100%; background: #1483d8 url(assets/img/webUploaderImg/progress.png) repeat-x; -webit-transition: width 200ms linear; -moz-transition: width 200ms linear; -o-transition: width 200ms linear; -ms-transition: width 200ms linear; transition: width 200ms linear; -webkit-animation: progressmove 2s linear infinite; -moz-animation: progressmove 2s linear infinite; -o-animation: progressmove 2s linear infinite; -ms-animation: progressmove 2s linear infinite; animation: progressmove 2s linear infinite; -webkit-transform: translateZ(0); }
    	#uploader .filelist li .success { display: block; position: absolute; left: 0; bottom: 0; height: 40px; width: 100%; z-index: 200; background: url(assets/img/webUploaderImg/success.png) no-repeat right bottom; }
    	.wordCount textarea{ width: 100%; height: 100px;}
	    .wordCount .wordwrap{ position:absolute; right: 6px; bottom: 6px;}
	    .wordCount .word{ color: red; padding: 0 4px;}
    </style>
</head>
<body>
    
              	 
	    <div class="page-container">
	        <form class="am-form am-form-horizontal">
	        
	        
	            <div id="uploader" class="am-form-group">
	                <div class="queueList">
	                    <div id="dndArea" class="placeholder">
	                        <div id="filePicker"></div>
	                        <p>或将照片拖到这里<br>注：作品，自拍照，最多上传6张</p>
	                    </div>
	                </div>
	                <div class="statusBar" style="display:none">
	                    <div class="progress">
	                        <span class="text">0%</span>
	                        <span class="percentage"></span>
	                    </div>    
	                    <div class="info"></div>
	                    <div class="btns">
	                        <div id="filePicker2"></div>
	                        <div class="uploadBtn">开始上传</div>
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
                <div class="am-form-group">
                     <label for="user-intro" class="am-u-sm-2 am-form-label am-text-secondary ">技能详情</label>
                     <div class="am-u-sm-10 wordCount" id="wordCount">
                            <textarea class="" minlength="1" maxlength="64" name="intro" rows="2" id="user-intro" value="${userInfo.intro }" placeholder="此技能有多优秀?比如多少年经验。取得了什么成绩.获得了多少好评。。字数64字以内"  required></textarea>
                            <span class="wordwrap"><var class="word">64</var>/64</span>
                     </div>
               	</div> 
                <div  class="am-form-group" >
                       <div class="am-u-sm-9 am-u-sm-push-3" >
                            <button type="submit" class="am-btn am-btn-primary">发布</button>
                       </div>
                </div>
                
               
           </form>
        </div>
	                	 
	                	 
	                	 
	               

    
		
	<script src="assets/js/jquery.min.js" 						     type="text/javascript" charset="utf-8"></script>
	<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"		 type="text/javascript" charset="utf-8"></script>
    <script src="assets/js/webUploaderJs/webuploader.js"			 type="text/javascript" charset="utf-8"></script>
    <script src="assets/js/webUploaderJs/extend-webuploader.js"      type="text/javascript" charset="utf-8"></script>
    <script src="assets/js/skillDataSourceJs/amazeui.areaselect.js"  type="text/javascript" charset="utf-8"></script>
    <script src="assets/js/skillDataSourceJs/demo.js"                type="text/javascript" charset="utf-8"></script>
 	<script>
 	$(function(){
 		var wordCount = $("#wordCount"),
        textArea = wordCount.find("textarea"),
        word = wordCount.find(".word");
        //调用
        statInputNum(textArea,word);
 	})
 	
 	window.webuploader = {
            config:{
                thumbWidth: 220, //缩略图宽度，可省略，默认为110
                thumbHeight: 220, //缩略图高度，可省略，默认为110
                wrapId: 'uploader', //必填
            },
            //处理客户端新文件上传时，需要调用后台处理的地址, 必填
            uploadUrl: './fileupload.php',
            //处理客户端原有文件更新时的后台处理地址，必填
            updateUrl: './fileupdate.php',
            //当客户端原有文件删除时的后台处理地址，必填
            removeUrl: './filedel.php',
            //初始化客户端上传文件，从后台获取文件的地址, 可选，当此参数为空时，默认已上传的文件为空
            initUrl: './fileinit.php',
        }
 	
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