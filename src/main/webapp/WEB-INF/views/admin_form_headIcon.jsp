<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="utf-8">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin index Examples</title>
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
                        <span class="am-icon-code"></span> 编辑头像
                    </div>
                    <div class="tpl-portlet-input tpl-fz-ml">
                        <div class="portlet-input input-small input-inline">
                            <div class="input-icon right">
                            </div>
                        </div>
                    </div>
            </div>
            <div class="tpl-block">
            	<div class="am-g">
            		 <div class="tpl-form-body tpl-form-line">
            		 	 <form class="am-form tpl-form-line-form" method="post" enctype="multipart/form-data" action="upload.do">
            		 	 	
					        <div class="am-popup" id="my-popup">
								<div class="am-popup-inner">
									<div class="am-popup-hd">
										<h4 class="am-popup-title">裁剪图片</h4>
										<span data-am-modal-close class="am-close">&times;</span>
									</div>
									<div class="am-popup-bd">
										<!-- 裁剪显示区 -->
										<div class="am-margin-bottom-sm" id="clip"></div>
										<button type="button" class="am-btn am-btn-primary" id="clipBtn">裁剪 </button>
										<input class="am-hide" type="file" id="file" name="headIconFile" />
									</div>
								</div>
							</div>
							<div class="am-form-group  am-u-sm-3 am-u-sm-push-3">
								<img class="am-circle" alt="140*140" src="${sessionScope.currentUser.avatarUrl}" width="140" height="140" id="img-view" />
								<br>
								<button type="button" class="am-btn am-btn-primary am-icon-cloud-upload" id="toggle-file">上传头像</button>
								<button type="submit" class="am-btn am-btn-primary tpl-btn-bg-color-success ">提交</button><small>${returnModel.key }</small>
							</div>
							
						</form>
					</div>
				</div>
			</div>
	</div>		
</div>
		<script src="assets/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		
		<script>
			$(function() {
				var $clip = $("#clip");
				var $file = $("#file");
				var $imgView = $("#img-view");
				var $popup = $("#my-popup");
				$("#toggle-file").click(function() {
					$file.trigger("click");
					$popup.modal({
						closeViaDimmer: false
					});
				});

				$clip.photoClip({
					width: 250,
					height: 250,
					fileMinSize: 20,
					file: $file,
					ok: "#clipBtn",
					loadStart: function() {
						console.log("照片读取中");
					},
					loadProgress: function(progress) {
						console.log(progress);
					},
					loadError: function() {
						console.log("图片加载失败");
					},
					loadComplete: function() {
						console.log("照片读取完成");
					},
					imgSizeMin: function(kbs) {
						console.log(kbs, "上传图片过小");
					},
					clipFinish: function(dataURL) {
						document.getElementById("img-view").src = dataURL;
						$popup.modal("close");
					}
				});
			})
		</script>
        
        
        
        
        
        
        
        
 
</body>
</html>




<!-- <div class="tpl-content-wrapper">
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
                        <span class="am-icon-code"></span> 表单
                    </div>
                    <div class="tpl-portlet-input tpl-fz-ml">
                        <div class="portlet-input input-small input-inline">
                            <div class="input-icon right">
                                <i class="am-icon-search"></i>
                                <input type="text" class="form-control form-control-solid" placeholder="搜索..."> </div>
                        </div>
                    </div>
                </div>

                <div class="tpl-block">

                    <div class="am-g">
                        <div class="tpl-form-body tpl-form-line">
                        
                            <form class="am-form tpl-form-line-form">
                                <div class="am-form-group">
                                    <label for="user-weibo" class="am-u-sm-3 am-form-label">封面图 <span class="tpl-form-line-small-title">Images</span></label>
                                    <div class="am-u-sm-9">
                                        <div class="am-form-group am-form-file">
                                            <div class="tpl-form-file-img">
                                                <img class="img-circle" src="assets/img/a5.png" alt="" >
                                            </div>
                                            <button type="button" class="am-btn am-btn-danger am-btn-sm">
    										<i class="am-icon-cloud-upload"></i> 添加封面图片</button>
                                            <input id="doc-form-file" type="file" multiple>
                                        </div>

                                    </div>
                                </div>
                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <button type="button" class="am-btn am-btn-primary tpl-btn-bg-color-success ">提交</button>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
                
            </div>
        </div> -->