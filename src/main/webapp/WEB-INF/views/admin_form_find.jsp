<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="utf-8">
<head>
	<title>VENUS</title>
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 	<link rel="stylesheet" href="assets/css/amazeui.min.css"/> 
 	<link rel="stylesheet" href="assets/css/amazeui.address.min.css"/>
</head>
<body>

         <div class="tpl-content-wrapper">
            <ol class="am-breadcrumb">
                <li><a href="#" class="am-icon-home">首页</a></li>
                <li><a href="#">Amaze UI CSS</a></li>
                <li class="am-active">文字列表</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span> 列表
                    </div>
                    
                    <div class="am-fr">
                                <select data-am-selected="{btnSize: 'sm'}">
					              <option value="option1">所有类别</option>
					              <option value="option2">IT业界</option>
					              <option value="option3">数码产品</option>
					              <option value="option3">笔记本电脑</option>
					              <option value="option3">平板电脑</option>
					              <option value="option3">只能手机</option>
					              <option value="option3">超极本</option>
					            </select>
                     </div>
                </div>
                <div class="tpl-block">
                    <div class="am-g">
                    
                        <div class="tpl-table-images">
                        
                        
                            <div class="am-u-sm-12 am-u-md-6 am-u-lg-4">
                                <div class="tpl-table-images-content">
                                    <div class="tpl-table-images-content-i-time">发布时间：2016-09-12</div>
                                    <div class="tpl-i-title">
                                        “你的旅行，是什么颜色？” 晒照片，换北欧梦幻极光之旅！
                                    </div>
                                    <a href="javascript:;" class="tpl-table-images-content-i">
                                        <div class="tpl-table-images-content-i-info">
                                            <span class="ico">
			                                    <img src="assets/img/user02.png" alt="">追逐
			                                </span>
                                        </div>
                                        <span class="tpl-table-images-content-i-shadow"></span>
                                        <img src="assets/img/a1.png" alt="">
                                    </a>
                                    <div class="tpl-table-images-content-block">
                                        <div class="tpl-i-font">
                                         	   你最喜欢的艺术作品，告诉大家它们的------名图画，色彩，交织，撞色，线条雕塑装置当代古代现代作品的照片。
                                        </div>
                                        <div class="tpl-i-more">
                                            <ul>
                                                <li><span class="am-icon-qq am-text-warning"> 100+</span></li>
                                                <li><span class="am-icon-weixin am-text-success"> 235+</span></li>
                                                <li><span class="am-icon-github font-green"> 600+</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                           
                        
                            
                            <div class="am-u-lg-12">
                                <div class="am-cf">
                                    <div class="am-fr">
                                        <ul class="am-pagination tpl-pagination">
                                            <li class="am-disabled"><a href="#">«</a></li>
                                            <li class="am-active"><a href="#">1</a></li>
                                            <li><a href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li><a href="#">4</a></li>
                                            <li><a href="#">5</a></li>
                                            <li><a href="#">»</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <hr>
                            </div>

                        </div>

                    </div>
                    
                </div>
                <div class="tpl-alert"></div>
            </div>
		</div>
	 
</body>
	<script src="assets/js/jquery.min.js" type="text/javascript" charset="utf-8"></script> 
 	<script>
		  if ($.AMUI && $.AMUI.validator) {
		    $.AMUI.validator.patterns.mobile = /^\s*1\d{10}\s*$/;
		  }
	</script>
</html>