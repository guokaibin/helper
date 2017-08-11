<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="utf-8">
<head>
	<title>VENUS</title>
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 	<link rel="stylesheet" href="assets/css/amazeui.min.css"/>
 	<link rel="stylesheet" href="http://cdn.staticfile.org/webuploader/0.1.0/Uploader.swf" >
 	<link rel="stylesheet" href="http://cdn.staticfile.org/webuploader/0.1.0/webuploader.js" >
 	<link rel="stylesheet" href="http://cdn.staticfile.org/webuploader/0.1.0/webuploader.min.js" >
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
                        <div class="am-u-sm-12 am-u-md-9">
                        
                            <form class="am-form am-form-horizontal">
								<div class="am-form-group">
                                    <label for="user-telephone" class="am-u-sm-3 am-form-label">预约技能</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" id="user-telephone" class="js-pattern-mobile" placeholder="输入手机号" required/>
                                    </div>
								</div>
                               <div class="am-form-group">
                                    <label for="user-intro" class="am-u-sm-3 am-form-label">技能详情</label>
                                    <div class="am-u-sm-9 wordCount" id="wordCount">
                                        <textarea class="" minlength="3" maxlength="32" name="intro" rows="5" id="user-intro"  placeholder="此技能又多优秀？比如多少年经验，取得了什么成绩，获得多说好评...字数在32字以内"></textarea>
                                        <span class="wordwrap"><var class="word">32</var>/32</span>
                                    </div>  
                               </div>
                               <div class="am-form-group">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <button type="submit" class="am-btn am-btn-primary">发布</button>
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
 	<script>
	    $(function(){
	        //先选出 textarea 和 统计字数 dom 节点
	        var wordCount = $("#wordCount"),
	            textArea = wordCount.find("textarea"),
	            word = wordCount.find(".word");
	        //调用
	        statInputNum(textArea,word);
	    });
	    /*
	    * 剩余字数统计
	    * 注意 最大字数只需要在放数字的节点哪里直接写好即可 如：<var class="word">200</var>
	    */
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