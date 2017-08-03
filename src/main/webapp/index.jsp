<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="utf-8">
<head>
	
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--  这条记录无效 -->
    <!-- <link rel="icon" href="icon/log_r.ico" type="image/x-icon"> -->
 	<link rel="stylesheet" href="helper_Static/bootstrap/css/bootstrap.min.css">
 	<link rel="stylesheet" href="helper_Static/bootstrap/utilcss/ie10-viewport-bug-workaround.css" > 
 	<script src="helper_Static/jquery/jquery-2.1.0.js"></script>
 	<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
	<!-- <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"  integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> -->
	<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
	<!-- <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"  integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"> -->
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<!-- <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"  integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script> -->
    <title>index</title>
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
                    <h1>私人管家<small>&nbsp;&nbsp;&nbsp;</small></h1>
                </div>
                <div class="col-md-offset-2"  >
                    <ul class="nav nav-pills pull-right end-block">
                        <li role="presentation"><a href="login.do">登陆</a></li>
                        <li role="presentation"><a href="register.do">注册</a></li>
                    </ul>
                </div>
            </div>
        </div>

		<div class="jumbotron row marketing">
	        <div class="col-lg-6 " >
	            <div style="height: 300px;width: auto">
	                <img src="helper_Static/img/images.png" alt="邮件助理" title="邮件助理" class="img-thumbnail img-responsive  " style="height: 300px;width: auto">
	            </div>
	        </div>
	        <div class="col-lg-6 carousel" >
	            <div style="height: 300px;width: auto">
	                <img src="helper_Static/img/customerService.jpg" alt="人工助理" title="人工助理" class="img-thumbnail img-responsive  " style="height: 300px;width: auto">
	            </div>
	        </div>
    	</div>

        <div class="row marketing">
            <div class="col-lg-6">
                <h4>邮件服务</h4>
                <p>Donec id elit non mi porta gravida at eget metus. Maecenas faucibus mollis interdum.</p>

                <h4>Subheading</h4>
                <p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum.</p>

                <h4>Subheading</h4>
                <p>Maecenas sed diam eget risus varius blandit sit amet non magna.</p>
            </div>
            <div class="col-lg-6">
                <h4>人工服务</h4>
                <p>人工助理可以做什么？一切！定时叫你起床，定时替你表白。替你向客户问好。替你买机票，火车票。</p>

                <h4>Subheading</h4>
                <p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum.</p>

                <h4>Subheading</h4>
                <p>Maecenas sed diam eget risus varius blandit sit amet non magna.</p>
            </div>
        </div>
        
        
        <div class="sectionhead  row wow fadeInUp">
            <span class="bigicon icon-cup "></span>
            <h3>This is what I can do for you</h3>
            <hr class="separetor">
         </div><!--SERVICE SECTION HEADING END-->
         
        <!-- SERVICE ITEMS START -->
        <div class="row">
               <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-duration="3s">
                   <img src="helper_Static/img/s1.png" alt="">
                   <h4>Responsive Web Design</h4>
                   <p>Grinder affogato, dark, sweet carajillo, flavour seasonal aroma single origin cream. Percolator. Eligendi impedit dolores nulla.</p>
                </div> <!-- ITEM END -->

                <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-duration="3s">
                   <img src="helper_Static/img/s2.png" alt="">
                   <h4>Android App Design</h4>
                   <p>Grinder affogato, dark, sweet carajillo, flavour seasonal aroma single origin cream. Percolator. Eligendi impedit dolores nulla.</p>
                </div> <!-- ITEM END -->

                <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-duration="3s">
                   <img src="helper_Static/img/s3.png" alt="">
                   <h4>iOS App Design</h4>
                   <p>Grinder affogato, dark, sweet carajillo, flavour seasonal aroma single origin cream. Percolator. Eligendi impedit dolores nulla.</p>
                </div> <!-- ITEM END -->

               <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-duration="3s">
                   <img src="helper_Static/img/s4.png" alt="">
                   <h4>Windows App Design</h4>
                   <p>Grinder affogato, dark, sweet carajillo, flavour seasonal aroma single origin cream. Percolator. Eligendi impedit dolores nulla.</p>
                </div> <!-- ITEM END -->

                <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-duration="3s">
                   <img src="helper_Static/img/s5.png" alt="">
                   <h4>Brand Identity Design</h4>
                   <p>Grinder affogato, dark, sweet carajillo, flavour seasonal aroma single origin cream. Percolator. Eligendi impedit dolores nulla.</p>
                </div> <!-- ITEM END -->

                <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-duration="3s">
                   <img src="helper_Static/img/s6.png" alt="">
                   <h4>CMYK Print Design</h4>
                   <p>Grinder affogato, dark, sweet carajillo, flavour seasonal aroma single origin cream. Percolator. Eligendi impedit dolores nulla.</p>
                </div> <!-- ITEM END -->
        </div>
        
        
        <footer class="footer">
            <p>&copy;  2016 Company, Inc.版权所有人:郭开斌</p>
        </footer>
    </div>


</body>
</html>