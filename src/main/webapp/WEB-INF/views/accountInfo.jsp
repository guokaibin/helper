<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="utf-8">
<head>
	
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
 	<link rel="stylesheet" href="../hlperStatic/bootstrap/css/bootstrap.min.css">
 	<link rel="stylesheet" href="../hlperStatic/bootstrap/utilcss/ie10-viewport-bug-workaround.css" > 
 	<script src="../hlperStatic/jquery/jquery-2.1.0.js"></script>
 	
    <title>register</title>
    <style>
        .end-block {
           margin-top: 30px;
        }
        .footer {
            padding-top: 19px;
            color: #777;
            border-top: 1px solid #e5e5e5;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="page-header">
            <div class="row">
                <div class="col-md-10">
                    <h1>ReportSys<small>&nbsp;&nbsp;&nbsp;welcome to reportSys</small></h1>
                </div>
            </div>
        </div>

        <div class="jumbotron" style="height: 600px">
        <h4>&nbsp;填写账户信息>></h4>
	        <form class="form-signin" action="submitUserInfo.do" method="post">
	            <div align="center" style="margin-top: 100px">
	            	<div class="row" style="height:50px;">
	            		<div class="col-md-4 col-md-offset-4">
	            			<div class="col-md-4">
	            				登陆名
	            			</div>
	            			<div class="col-md-8">
	            				<small><input type="text" name="userEmail" value="${email}" class="form-control" readonly /></small>
	            			</div>
	            		</div>
	            	</div>
	            
	                <div class="row" style="height: 50px;">
	                    <div class="form-group col-md-4 col-md-offset-4">
	                        <label for="userPwd" class="control-label">设置密码</label>
	                        <input type="password" id="userPwd" name="password" class="form-control center-block" placeholder="密码" required autofocus />
	                    </div>
	                </div>
	                
	                <div class="row" style="height: 50px;">
	                    <div class="form-group col-md-4 col-md-offset-4">
	                        <label for="examPassword" class="control-label">确认密码</label>
	                       	<input type="password" name="examPassword" id="examPassword" class="form-control center-block" placeholder="确认密码" required />
	                    </div>
	                </div>
	                
	                <div class="row" style="height: 50px">
	                    <div class="form-group col-md-4 col-md-offset-4">
	                        <label for="userName" class="control-label">设置会员名称</label>
	                        <input type="text" name="userName" id="userName" class="form-control center-block" placeholder="用户名称" required />
	                    </div>
	                </div>
	                
	                <div class="row">
	                    <div class="col-md-4 col-md-offset-4">
	                        <button class="btn btn-default btn-sm  btn-block" type="submit">提交</button>
	                    </div>
	                </div>
	                
	            </div>
	        </form>
        </div>
        <footer class="footer">
            <p>&copy; 2016 Company, Inc.版权所有人:郭开斌</p>
    	</footer>
    </div>
	
</body>
</html>