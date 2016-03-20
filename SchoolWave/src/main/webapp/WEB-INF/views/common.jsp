<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String CDN_VERSION 		=   "?cdnversion=mo-1234567";

	String MAIN_DOMAIN 		=   "http://www.mtcrm.com";//后台请求地址服务器地址
	String STATIC_CDN_PATH 	=   "http://7xrj7t.com1.z0.glb.clouddn.com/";//JS,CSS,IMG[网页]静态资源服务器地址
	String IMAGE_CDN_PATH 	=   "http://785j8p.com1.z0.glb.clouddn.com/";//图片[上传]的静态资源服务器地址
	String CDN_TYPE 		=	"";

	String domain 			=	""; 
	String host 			=	request.getServerName();
	int    port				=	request.getLocalPort();

	if(host.contains("192") || host.contains("localhost")){
		if(port!=80){
			domain  		= 	"http://"+host+":" + port + "/";
		}else{
			domain  		= 	"http://"+host + "/";
		}
		STATIC_CDN_PATH 	= 	domain	+	"res/";
		MAIN_DOMAIN 		=	domain 	+ 	"school/";
	}else{
		domain 			= 	MAIN_DOMAIN;
		STATIC_CDN_PATH = 	STATIC_CDN_PATH +	"res/"	+ CDN_TYPE	+	"/";
	}
%>

<!-- css 样式区域 -->
<link rel="stylesheet" href="<%=STATIC_CDN_PATH%>lib/bootstrap/bootstrap.min.css<%=CDN_VERSION%>">
<link rel="stylesheet" href="<%=STATIC_CDN_PATH%>css/custom.css<%=CDN_VERSION%>">
<link href="<%=STATIC_CDN_PATH%>lib/bootstrap-toastr/toastr.min.css<%=CDN_VERSION%>" rel="stylesheet" type="text/css"/>
<script src="<%=STATIC_CDN_PATH%>lib/jquery/jquery-1.12.0.min.js<%=CDN_VERSION%>"></script>
<script src="<%=STATIC_CDN_PATH%>lib/bootstrap/bootstrap.min.js<%=CDN_VERSION%>"></script>
<script src="<%=STATIC_CDN_PATH%>lib/bootstrap-toastr/toastr.js<%=CDN_VERSION%>"></script>
<!-- 公共js引导区域 -->
<script>
//空的处理
var empty = 
    '<div class="empty"><span class="icon icon-wenjianjia"></span><div class="empty-info">暂无数据<br></div></div>';
var REGEX = {
		mobile: /^(((13[0-9]{1})|(14[0-9]{1})|(15[0-9]{1})|(17[0-9]{1})|(18[0-9]{1}))+\d{8})$/,
	    pwd:/^[a-zA-Z0-9]{6,20}$/, 
	    jcaptchaCode:/^[a-zA-Z0-9]*$/,
	    number:/^[0-9]*$/,
	};
</script>