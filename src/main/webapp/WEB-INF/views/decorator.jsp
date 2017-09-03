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
    <link rel="stylesheet" href="assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="assets/css/admin.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="stylesheet" href="assets/css/amazeui.address.min.css"/> 
    <link rel="stylesheet" type="text/css" href="assets/css/webuploader/style.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/webuploader/webuploader.css" />
      <style type="text/css">
        #clip {
				width: 100%;
				height: 400px;
		}
	    /* .wordCount{ position:relative;width: 600px; } */
	    .wordCount textarea{ width: 100%; height: 100px;}
	    .wordCount .wordwrap{ position:absolute; right: 6px; bottom: 6px;}
	    .wordCount .word{ color: red; padding: 0 4px;}
	    
	    #uploader .filelist li {
		    width: 110px;
		    height: 110px;
		    background: url(assets/img/webUploaderImg/bg.png) no-repeat;
		    text-align: center;
		    margin: 0 8px 20px 0;
		    position: relative;
		    display: inline;
		    float: left;
		    overflow: hidden;
		    font-size: 12px;
		}
	    
	    #uploader .placeholder {
		    border: 3px dashed #e6e6e6;
		    min-height: 238px;
		    padding-top: 158px;
		    text-align: center;
		    background: url(assets/img/webUploaderImg/image.png) center 93px no-repeat;
		    color: #cccccc;
		    font-size: 18px;
		    position: relative;
		}
		
		#uploader .filelist li .success {
		    display: block;
		    position: absolute;
		    left: 0;
		    bottom: 0;
		    height: 40px;
		    width: 100%;
		    z-index: 200;
		    background: url(assets/img/webUploaderImg/success.png) no-repeat right bottom;
		}
		
		#uploader .filelist div.file-panel span {
		    width: 24px;
		    height: 24px;
		    display: inline;
		    float: right;
		    text-indent: -9999px;
		    overflow: hidden;
		    background: url(assets/img/webUploaderImg/icons.png) no-repeat;
		    margin: 5px 1px 1px;
		    cursor: pointer;
		}
		
		#uploader .filelist li p.progress span {
		    display: none;
		    overflow: hidden;
		    width: 0;
		    height: 100%;
		    background: #1483d8 url(assets/img/webUploaderImg/progress.png) repeat-x;
		
		    -webit-transition: width 200ms linear;
		    -moz-transition: width 200ms linear;
		    -o-transition: width 200ms linear;
		    -ms-transition: width 200ms linear;
		    transition: width 200ms linear;
		
		    -webkit-animation: progressmove 2s linear infinite;
		    -moz-animation: progressmove 2s linear infinite;
		    -o-animation: progressmove 2s linear infinite;
		    -ms-animation: progressmove 2s linear infinite;
		    animation: progressmove 2s linear infinite;
		
		    -webkit-transform: translateZ(0);
		}
    </style> 
    <link rel="stylesheet" type="text/css" href="assets/css/skillDataSource/amazeui.areaselect.css" />
</head>

<body data-type="index">

     <header class="am-topbar am-topbar-inverse admin-header">
        <div class="am-topbar-brand">
            <a href="javascript:;" class="tpl-logo"  style="width:65px;height:65px;margin: 4px 23px ;padding:1px;"><!-- style="padding:2px;margin-top: 9px;" -->
                 <img src="assets/img/logo.ico" alt=""  />
            </a>
        </div>
        <div class="am-icon-list tpl-header-nav-hover-ico am-fl am-margin-right" style="padding: 10px;margin-top: 15px;"></div>
        <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>
        <div class="am-collapse am-topbar-collapse" id="topbar-collapse">
            <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list tpl-header-list">
                <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                    <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                        <span class="am-icon-bell-o"></span> 提醒 <span class="am-badge tpl-badge-success am-round">5</span></span>
                    </a>
                    <ul class="am-dropdown-content tpl-dropdown-content">
                        <li class="tpl-dropdown-content-external">
                            <h3>你有 <span class="tpl-color-success">5</span> 条提醒</h3><a href="###">全部</a></li>
                        <li class="tpl-dropdown-list-bdbc"><a href="#" class="tpl-dropdown-list-fl"><span class="am-icon-btn am-icon-plus tpl-dropdown-ico-btn-size tpl-badge-success"></span> 【预览模块】移动端 查看时 手机、电脑框隐藏。</a>
                            <span class="tpl-dropdown-list-fr">3小时前</span>
                        </li>
                        <li class="tpl-dropdown-list-bdbc"><a href="#" class="tpl-dropdown-list-fl"><span class="am-icon-btn am-icon-check tpl-dropdown-ico-btn-size tpl-badge-danger"></span> 移动端，导航条下边距处理</a>
                            <span class="tpl-dropdown-list-fr">15分钟前</span>
                        </li>
                        <li class="tpl-dropdown-list-bdbc"><a href="#" class="tpl-dropdown-list-fl"><span class="am-icon-btn am-icon-bell-o tpl-dropdown-ico-btn-size tpl-badge-warning"></span> 追加统计代码</a>
                            <span class="tpl-dropdown-list-fr">2天前</span>
                        </li>
                    </ul>
                </li>
                <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                    <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                        <span class="am-icon-comment-o"></span> 消息 <span class="am-badge tpl-badge-danger am-round">9</span></span>
                    </a>
                    <ul class="am-dropdown-content tpl-dropdown-content">
                        <li class="tpl-dropdown-content-external">
                            <h3>你有 <span class="tpl-color-danger">9</span> 条新消息</h3><a href="###">全部</a></li>
                        <li>
                            <a href="#" class="tpl-dropdown-content-message">
                                <span class="tpl-dropdown-content-photo">
                      			<img src="assets/img/user02.png" alt=""> </span>
                                <span class="tpl-dropdown-content-subject">
                      			<span class="tpl-dropdown-content-from"> 禁言小张 </span>
                                <span class="tpl-dropdown-content-time">10分钟前 </span>
                                </span>
                                <span class="tpl-dropdown-content-font"> Amaze UI 的诞生，依托于 GitHub 及其他技术社区上一些优秀的资源；Amaze UI 的成长，则离不开用户的支持。 </span>
                            </a>
                            <a href="#" class="tpl-dropdown-content-message">
                                <span class="tpl-dropdown-content-photo"><img src="assets/img/user03.png" alt=""></span>
                                <span class="tpl-dropdown-content-subject">
	                      			<span class="tpl-dropdown-content-from"> Steam </span>
	                                <span class="tpl-dropdown-content-time">18分钟前</span>
                                </span>
                                <span class="tpl-dropdown-content-font"> 为了能最准确的传达所描述的问题， 建议你在反馈时附上演示，方便我们理解。 </span>
                            </a>
                        </li>

                    </ul>
                </li>
                <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                    <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                        <span class="am-icon-calendar"></span> 进度 <span class="am-badge tpl-badge-primary am-round">4</span></span>
                    </a>
                    <ul class="am-dropdown-content tpl-dropdown-content">
                        <li class="tpl-dropdown-content-external">
                            <h3>你有 <span class="tpl-color-primary">4</span> 个任务进度</h3><a href="###">全部</a></li>
                        <li>
                            <a href="javascript:;" class="tpl-dropdown-content-progress">
                                <span class="task">
                        		<span class="desc">Amaze UI 用户中心 v1.2 </span>
                                <span class="percent">45%</span>
                                </span>
                                <span class="progress">
                        			<div class="am-progress tpl-progress am-progress-striped"><div class="am-progress-bar am-progress-bar-success" style="width:45%"></div></div>
                    			</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;" class="tpl-dropdown-content-progress">
                                <span class="task">
                       			 	<span class="desc">新闻内容页 </span>
                                	<span class="percent">30%</span>
                                </span>
                                <span class="progress">
                       				<div class="am-progress tpl-progress am-progress-striped"><div class="am-progress-bar am-progress-bar-secondary" style="width:30%"></div></div>
                    			</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;" class="tpl-dropdown-content-progress">
                                <span class="task">
                       				 <span class="desc">管理中心 </span>
                                	<span class="percent">60%</span>
                                </span>
                                <span class="progress">
                       				 <div class="am-progress tpl-progress am-progress-striped"><div class="am-progress-bar am-progress-bar-warning" style="width:60%"></div></div>
                    			</span>
                            </a>
                        </li>

                    </ul>
                </li>
                <li class="am-hide-sm-only"><a href="javascript:;" id="admin-fullscreen" class="tpl-header-list-link"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>

                <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                    <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                        <span class="tpl-header-list-user-nick">您好,${sessionScope.currentUser.nickname}</span><span class="tpl-header-list-user-ico"> <img src="${sessionScope.currentUser.avatarUrl}" width="40" height="40"></span>
                    </a>
                    <ul class="am-dropdown-content">
                        <li><a href="#"><span class="am-icon-bell-o"></span> 资料</a></li>
                        <li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
                        <li><a href="logout.do"><span class="am-icon-power-off"></span> 退出</a></li>
                    </ul>
                </li>
                <li><a href="###" class="tpl-header-list-link"><span class="am-icon-sign-out tpl-header-list-ico-out-size"></span></a></li>
            </ul>
        </div>
    </header>  
     
    <div class="tpl-page-container tpl-page-header-fixed">
         <div class="tpl-left-nav tpl-left-nav-hover">
            <div class="tpl-left-nav-title">
                Amaze UI 列表
            </div>
            <div class="tpl-left-nav-list">
                <ul class="tpl-left-nav-menu">
                    <li class="tpl-left-nav-item">
                        <a href="admin_home.do" class="nav-link active">
                            <i class="am-icon-home"></i>
                            <span>首页</span>
                        </a>
                    </li>
                    
                    <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-table"></i>
                            <span>个人中心</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu">
                            <li>
                                <a href="#" onclick="openwin()">
                                    <i class="am-icon-angle-right"></i>
                                    <span>头像裁剪</span>
                                    <i class="tpl-left-nav-content tpl-badge-success">18</i>
								</a>
                                <a href="admin_form_headIcon.do">
                                    <i class="am-icon-angle-right"></i>
                                    <span>我的头像</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>
                                <a href="admin_form_myProfile.do">
                                    <i class="am-icon-angle-right"></i>
                                    <span>我的资料</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>
                                <a href="admin_form_bindPhone.do">
                                    <i class="am-icon-angle-right"></i>
                                    <span>绑定手机</span>
                                    <i class="tpl-left-nav-content tpl-badge-success">18</i>
								</a>
                            </li>
                        </ul>
                    </li>
                    
                    <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-table"></i>
                            <span>账户设置</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu">
                            <li>
                                <a href="table-font-list.html">
                                    <i class="am-icon-angle-right"></i>
                                    <span>修改密码</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>
                                <a href="table-images-list.html">
                                    <i class="am-icon-angle-right"></i>
                                    <span>找回密码</span>
                                    <i class="tpl-left-nav-content tpl-badge-success">18</i>
								</a>
                            </li>
                        </ul>
                    </li>

                    <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-wpforms"></i>
                            <span>表单</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right tpl-left-nav-more-ico-rotate"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu" style="display: block;">
                            <li>
                                <a href="form-amazeui.html">
                                    <i class="am-icon-angle-right"></i>
                                    <span>Amaze UI 表单</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>

                                <a href="form-line.html">
                                    <i class="am-icon-angle-right"></i>
                                    <span>线条表单</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    
                    <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-key"></i>
                            <span>出售技能</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu">
                            <li>
                                <a href="admin_form_sellSkill.do">
                                    <i class="am-icon-angle-right"></i>
                                    <span>出售技能</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>
                                <a href="admin_form_find.do">
                                    <i class="am-icon-angle-right"></i>
                                    <span>发现</span>
                                    <i class="tpl-left-nav-content tpl-badge-success">18</i>
								</a>
                            </li>
                        </ul>
                    </li>
                    
                     <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-table"></i>
                            <span>消息管理</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu">
                            <li>
                                <a href="admin_form_webUploaderView.do">
                                    <i class="am-icon-angle-right"></i>
                                    <span>出售技能</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>
                                <a href="table-images-list.html">
                                    <i class="am-icon-angle-right"></i>
                                    <span>找回密码</span>
                                    <i class="tpl-left-nav-content tpl-badge-success">18</i>
								</a>
                            </li>
                        </ul>
                    </li>
                    <li class="tpl-left-nav-item">
                        <a href="login.html" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-key"></i>
                            <span>登录</span>
                        </a>
                    </li>
                </ul>
            </div>
         </div>

		 <div>  
			  <sitemesh:write property='body' />
		 </div>  
	</div>

	<script src="assets/js/echarts.js" type="text/javascript" charset="utf-8"></script>
    <script src="assets/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="assets/js/amazeui.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="assets/js/iscroll.js" type="text/javascript" charset="utf-8"></script>
    <script src="assets/js/app.js" type="text/javascript" charset="utf-8"></script>
    <!-- 地址信息js -->
	<script src="assets/js/address.js" type="text/javascript" charset="utf-8"></script>  
	
	<script src="assets/js/iscroll-zoom.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="assets/js/hammer.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="assets/js/photoClip.min.js" type="text/javascript" charset="utf-8"></script>
	<script>
	function openwin(){ 
		window.open("https://stevenyuysy.github.io/Cropper/","newwindow","height=800,width=900,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no"); 
	}
	</script>
	
	<!-- <script type="text/javascript" src="assets/js/webuploader/jquery.js"></script> -->
    <script src="assets/js/webuploader/webuploader.js"				 type="text/javascript" charset="utf-8"></script>
    <script src="assets/js/webuploader/upload.js"					 type="text/javascript" charset="utf-8"></script>
    
    <script src="assets/js/skillDataSource/demo.js"                type="text/javascript" charset="utf-8"></script>
    <script src="assets/js/skillDataSource/amazeui.areaselect.js"  type="text/javascript" charset="utf-8"></script>
    <script>
		var BASE_URL = '${ctx}';
	</script>
</body>
</html>