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
 	
    <title>login</title>
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
	        <form class="form-signin" action="loginUser.do" method="post">
	            <div align="center" style="margin-top: 100px">
	                <h3 class="form-signin-heading">密码登陆</h3>
	                <div class="row" style="height: 50px;">
	                    <div class="form-group col-md-4 col-md-offset-4">
	                        <label for="inputEmail" class="sr-only">用户名</label>
	                        <input name="email" type="email" id="inputEmail" class="form-control center-block" placeholder="邮箱" required autofocus>
	                    </div>
	                </div>
	                <div class="row" style="height: 50px">
	                    <div class="form-group col-md-4 col-md-offset-4">
	                        <label for="inputPassword" class="sr-only">密码</label>
	                        <input name="password" type="password" id="inputPassword" class="form-control center-block" placeholder="密码" required>
	                    </div>
	                </div>
	                
	                <div class="row">
	                	<div class="col-md-4 col-md-offset-4">
		                	<div class="col-md-5">
		                		<label><input type="checkbox" id="rememberMe" value="1"/>记住我 </label>
		                	</div>
	                	
	                		<div>
		                		 
	                		</div>
	                	</div>
	                </div>
	                
	                <div class="row">
	                    <div class="col-md-4 col-md-offset-4">
	                        <button class="btn  btn-sm btn-block" type="submit">登陆</button>
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