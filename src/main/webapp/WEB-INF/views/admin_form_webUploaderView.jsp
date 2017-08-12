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
     
</head>
<body>

       <div class="page-container">
            <div id="uploader" class="wu-example">
                <div class="queueList">
                    <div id="dndArea" class="placeholder">
                        <div id="filePicker"></div>
                        <p>或将照片拖到这里</p>
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
        </div>
		
		
	<script src="assets/js/jquery.min.js" 						     type="text/javascript" charset="utf-8"></script>
	<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"		 type="text/javascript" charset="utf-8"></script>
    <script src="assets/js/webUploaderJs/webuploader.js"			 type="text/javascript" charset="utf-8"></script>
    <script src="assets/js/webUploaderJs/extend-webuploader.js"      type="text/javascript" charset="utf-8"></script>
    
 	<script>
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
	</script>
</body>
</html>