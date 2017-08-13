<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="utf-8">
<head>
	<title>VENUS</title>
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 	<link rel="stylesheet" href="assets/css/amazeui.min.css"/>
 	<!-- webupload 插件cdn -->
  	<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
    <link rel="stylesheet" type="text/css" href="assets/css/webUploaderCss/bootstrap-theme.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/webUploaderCss/style.css">
    <link rel="stylesheet" type="text/css" href="assets/css/webUploaderCss/demo.css">
    <link rel="stylesheet" type="text/css" href="assets/css/webUploaderCss/webuploader.css">
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
	                <div id="wrapper">
	                	<iframe src="admin_form_webUploaderView.do" width="100%" height="850px" scrolling="no" marginheight="0" marginwidth="0"></iframe>
	                </div>
                </div>
            </div>
		</div>
		
		
	<script src="assets/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="assets/js/webUploaderJs/webuploader.js" type="text/javascript" charset="utf-8"></script>
    <script src="assets/js/webUploaderJs/extend-webuploader.js" type="text/javascript" charset="utf-8"></script>
    
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