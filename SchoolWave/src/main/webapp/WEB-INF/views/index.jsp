	<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<!DOCTYPE html>
		<!--[if IE 8]>
		<html lang="en" class="ie8 no-js" id="ng-app"  data-ng-app="YunKerApp"> <![endif]-->
		<!--[if IE 9]>
		<html lang="en" class="ie9 no-js" id="ng-app"  data-ng-app="YunKerApp"> <![endif]-->
		<!--[if !IE]><!-->
		<html lang="en" data-ng-app="YunKerApp">
		<!--<![endif]-->
		<head>
		<meta charset="utf-8"/>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title  data-ng-bind="$state.current.data.pageTitle+' | 名校'"></title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
		<meta content="" name="description"/>
		<meta content="" name="author"/>

		<%
				String CDN_VERSION 		=   "?cdnversion=mo-12+2342";
				String MT_DOMAIN 		=   "http://www.mtcrm.com";//后台请求地址服务器地址
				String MT_LOGIN_DOMAIN  =   "http://www.mtcrm.com";//后台请求地址服务器地址
				String STATIC_CDN_PATH 	=   MT_DOMAIN;//JS,CSS,IMG[网页]静态资源服务器地址
				String IMAGE_CDN_PATH 	=   "http://785j8p.com1.z0.glb.clouddn.com";//图片[上传]的静态资源服务器地址
				String CDN_TYPE 		=	"";

				String domain 		=	""; 
				String host 		=	request.getServerName();
				int    port			=	request.getLocalPort();

				if(host.contains("192") || host.contains("localhost")){
					if(port!=80){
						domain  	= "http://"+host+":" + port + "/";
					}else{
						domain  	= "http://"+host + "/";
					}
					MT_LOGIN_DOMAIN =   domain;
					STATIC_CDN_PATH = 	domain	+	"res/";
					MT_DOMAIN 		=	domain 	+ 	"school/";
				}else{
					domain 			= 	MT_DOMAIN;
					STATIC_CDN_PATH = 	STATIC_CDN_PATH +	"res/"	+ CDN_TYPE	+	"/";
				}
		%>
		<!-- BEGIN 界面图表的css样式 -->
		<link href="<%=STATIC_CDN_PATH%>assets/global/plugins/font-awesome/css/font-awesome.min.css<%=CDN_VERSION%>" 
			rel="stylesheet" 	type="text/css"/>
		<link href="<%=STATIC_CDN_PATH%>assets/global/plugins/simple-line-icons/simple-line-icons.min.css<%=CDN_VERSION%>" 
			rel="stylesheet"    type="text/css"/>
		<link href="<%=STATIC_CDN_PATH%>assets/global/plugins/bootstrap/css/bootstrap.min.css<%=CDN_VERSION%>" 
			rel="stylesheet" type="text/css"/>
		<link href="<%=STATIC_CDN_PATH%>assets/global/plugins/uniform/css/uniform.default.css<%=CDN_VERSION%>" 
			rel="stylesheet" type="text/css"/>
		<link href="<%=STATIC_CDN_PATH%>assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css<%=CDN_VERSION%>" 
			rel="stylesheet" type="text/css"/>
		<link href="<%=STATIC_CDN_PATH%>assets/global/plugins/toastr/toastr.min.css<%=CDN_VERSION%>" 
			rel="stylesheet" type="text/css"/>
		<link id="ng_load_plugins_before" />
		<link href="<%=STATIC_CDN_PATH%>assets/global/css/components-rounded.min.css<%=CDN_VERSION%>" 
			rel="stylesheet" type="text/css"/>
		<link href="<%=STATIC_CDN_PATH%>assets/global/css/plugins.min.css<%=CDN_VERSION%>" 
			rel="stylesheet" type="text/css"/>
		<link href="<%=STATIC_CDN_PATH%>assets/layout/css/layout.min.css<%=CDN_VERSION%>" 
			rel="stylesheet" type="text/css"/>
		<link href="<%=STATIC_CDN_PATH%>assets/layout/css/themes/grey.min.css<%=CDN_VERSION%>" 
			rel="stylesheet" type="text/css" />
		<link href="<%=STATIC_CDN_PATH%>assets/pages/css/inbox.min.css<%=CDN_VERSION%>" 	
			rel="stylesheet" type="text/css"/>	
		<link href="<%=STATIC_CDN_PATH%>assets/pages/css/todo.min.css<%=CDN_VERSION%>" 		
			rel="stylesheet" type="text/css"/>	
		<link href="<%=STATIC_CDN_PATH%>assets/layout/css/custom.min.css<%=CDN_VERSION%>" 	
			rel="stylesheet" type="text/css"/>
		<style>
	        .page-list .pagination {float:right;}
	        .page-list .pagination span {cursor: pointer;}
	        .page-list .pagination .separate span{cursor: default; border-top:none;border-bottom:none;}
	        .page-list .pagination .separate span:hover {background: none;}
	        .page-list .page-total {float:left; margin: 14px 20px;}
	        .page-list .page-total input, .page-list .page-total select{height: 26px; border: 1px solid #ddd;}
	        .page-list .page-total input {width: 40px; padding-left:3px;}
	        .page-list .page-total select {width: 50px;}
	    </style>	
		</head>
		<body ng-controller="AppController"  class="page-header-fixed page-sidebar-closed-hide-logo page-container-bg-solid">
		
		<input value='<fmt:formatDate pattern="yyyy-MM-dd" value="<%=new java.util.Date()%>" />' 
			id='sysCurrentDate' style='display: none;'>

		<input value='<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="<%=new java.util.Date()%>" />' 
			id='sysCurrentDateTime' style='display: none;'>
			
		<div ng-spinner-bar class="page-spinner-bar hide" >
			<div class="bounce1"></div>
			<div class="bounce2"></div>
			<div class="bounce3"></div>
		</div>

		<div class="page-header navbar navbar-fixed-top" ng-include="'v_tpl_header'" ng-controller="HeaderController"></div>
		<div class="clearfix"></div>

		<div class="page-container">
			<div class="page-sidebar-wrapper">
				<div class="page-sidebar navbar-collapse collapse" ng-include="'v_tpl_sidebar'" data-ng-controller="SidebarController" ></div>
			</div>
			<div class="page-content-wrapper">
				<div class="page-content">
					<div ui-view class="fade-in-up"></div>
				</div>
			</div>
		</div>

		<div class="page-footer" ng-include="'v_tpl_footer'" data-ng-controller="FooterController"></div>

		<!--[if lt IE 9]>
			<script src="<%=STATIC_CDN_PATH%>assets/global/plugins/respond.min.js<%=CDN_VERSION%>"></script>
			<script src="<%=STATIC_CDN_PATH%>assets/global/plugins/excanvas.min.js<%=CDN_VERSION%>"></script>
		<![endif]-->
		<script src="<%=STATIC_CDN_PATH%>assets/global/plugins/angular/angular.js<%=CDN_VERSION%>" type="text/javascript"></script>
		<script src="<%=STATIC_CDN_PATH%>assets/global/plugins/angular/angular-sanitize.min.js<%=CDN_VERSION%>" type="text/javascript"></script>
		<script src="<%=STATIC_CDN_PATH%>assets/global/plugins/angular/plugins/angular-ui-router.min.js<%=CDN_VERSION%>" type="text/javascript"></script>
		<script src="<%=STATIC_CDN_PATH%>assets/global/plugins/angular/plugins/ui-bootstrap-tpls.min.js<%=CDN_VERSION%>" type="text/javascript"></script>
		<script src="<%=STATIC_CDN_PATH%>assets/global/plugins/angular/plugins/ocLazyLoad.min.js<%=CDN_VERSION%>" type="text/javascript"></script>
		<script src="<%=STATIC_CDN_PATH%>assets/global/plugins/jquery.min.js<%=CDN_VERSION%>" type="text/javascript"></script>
		<script src="<%=STATIC_CDN_PATH%>assets/global/plugins/bootstrap/js/bootstrap.min.js<%=CDN_VERSION%>" type="text/javascript"></script>
		<script 
			src="<%=STATIC_CDN_PATH%>assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js<%=CDN_VERSION%>" type="text/javascript"></script>
		<script src="<%=STATIC_CDN_PATH%>assets/global/plugins/jquery.blockui.min.js<%=CDN_VERSION%>" type="text/javascript"></script>
		<script src="<%=STATIC_CDN_PATH%>assets/global/plugins/uniform/jquery.uniform.min.js<%=CDN_VERSION%>" type="text/javascript"></script>
		<script src="<%=STATIC_CDN_PATH%>assets/global/plugins/toastr/toastr.js<%=CDN_VERSION%>" type="text/javascript"></script>
		<script src="<%=STATIC_CDN_PATH%>assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js<%=CDN_VERSION%>" type="text/javascript"></script>
		<script src="<%=STATIC_CDN_PATH%>assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js<%=CDN_VERSION%>" type="text/javascript"></script>
		
		<script src="<%=STATIC_CDN_PATH%>js/App.js<%=CDN_VERSION%>" type="text/javascript"></script>
		<script src="<%=STATIC_CDN_PATH%>assets/global/scripts/app.js<%=CDN_VERSION%>" type="text/javascript"></script>
		<script src="<%=STATIC_CDN_PATH%>assets/layout/scripts/layout.js<%=CDN_VERSION%>" type="text/javascript"></script>

		<script type="text/javascript">
			var  mtPath  		= '<%=MT_DOMAIN%>';
			var  staticPath     = '<%=STATIC_CDN_PATH%>';
			var  mtLoginPath    = '<%=MT_LOGIN_DOMAIN%>';
			var chatColors = ['#67B7DC','#FDD400','#84B761','#CC4748','#CD82AD','#2F4074'];
			function IsURL(str_url){
			        //var strRegex = "^((https|http|ftp|rtsp|mms)?://)"
			        var strRegex = "^((https|http)://)"
			        + "(([0-9a-z_!~*'().&=+$%-]+: )?[0-9a-z_!~*'().&=+$%-]+@)?" //ftp的user@
			        + "(([0-9]{1,3}\.){3}[0-9]{1,3}" // IP形式的URL- 199.194.52.184
			        + "|" // 允许IP和DOMAIN（域名）
			        + "([0-9a-z_!~*'()-]+\.)*" // 域名- www.
			        + "([0-9a-z][0-9a-z-]{0,61})?[0-9a-z]\." // 二级域名
			        + "[a-z]{2,6})" // first level domain- .com or .museum
			        + "(:[0-9]{1,4})?" // 端口- :80
			        + "((/?)|" // a slash isn't required if there is no file name
			        + "(/[0-9a-z_!~*'().;?:@&=+$,%#-]+)+/?)$";
			        var re=new RegExp(strRegex);
			        if (re.test(str_url)){
			            return (true);
			        }else{
			            return (false);
			        }
			};
			 /**
			 * cookie 的操作
			 */
			var cookie = {
			    /**
			     * cookie 的设定
			     * @param  {String} c_name  cookie的名称
			     * @param  {String} value   cookie的值
			     * @param  {String} expiredays 过期天数
			     */
			    set: function (c_name, value, expiredays) {
			        var exdate = new Date();
			        exdate.setDate(exdate.getDate() + expiredays);
			        document.cookie = c_name + "=" + escape(value) + ((expiredays == null) ? "" : ";expires=" + exdate.toGMTString()) + ";path=/";
			    },//set end
			    /**
			     *
			     * @param {string} c_name cookie的名称
			     * @returns {string}
			     */
			    get: function (c_name) {
			        if (document.cookie.length > 0) {
			            c_start = document.cookie.indexOf(c_name + "=");
			            if (c_start != -1) {
			                c_start = c_start + c_name.length + 1;
			                c_end = document.cookie.indexOf(";", c_start);
			                if (c_end == -1) c_end = document.cookie.length;
			                return decodeURIComponent(document.cookie.substring(c_start, c_end));
			            }
			        }
			        return "";
			    }//get end
			}
			Array.prototype.extend = function (other_array) {
				var _this = this;
				$.each(other_array,function(i,v){
					_this.push(v);
				});
			}
			/**
			 * 时间格式化 解决浏览器差异的bug
			 */
			function newDate(dateSet) {
				return   new Date(Date.parse(dateSet.replace(/-/g,"/")));
			}
			function luhmCheck(bankno){
				if($.trim(bankno)==""){return false;}
		        var lastNum=bankno.substr(bankno.length-1,1);//取出最后一位（与luhm进行比较）
		        
		        var first15Num=bankno.substr(0,bankno.length-1);//前15或18位
		        var newArr=new Array();
		        for(var i=first15Num.length-1;i>-1;i--){    //前15或18位倒序存进数组
		            newArr.push(first15Num.substr(i,1));
		        }
		        var arrJiShu=new Array();  //奇数位*2的积 <9
		        var arrJiShu2=new Array(); //奇数位*2的积 >9
		        
		        var arrOuShu=new Array();  //偶数位数组
		        for(var j=0;j<newArr.length;j++){
		            if((j+1)%2==1){//奇数位
		                if(parseInt(newArr[j])*2<9)
		                arrJiShu.push(parseInt(newArr[j])*2);
		                else
		                arrJiShu2.push(parseInt(newArr[j])*2);
		            }
		            else //偶数位
		            arrOuShu.push(newArr[j]);
		        }
		        
		        var jishu_child1=new Array();//奇数位*2 >9 的分割之后的数组个位数
		        var jishu_child2=new Array();//奇数位*2 >9 的分割之后的数组十位数
		        for(var h=0;h<arrJiShu2.length;h++){
		            jishu_child1.push(parseInt(arrJiShu2[h])%10);
		            jishu_child2.push(parseInt(arrJiShu2[h])/10);
		        }        
		        
		        var sumJiShu=0; //奇数位*2 < 9 的数组之和
		        var sumOuShu=0; //偶数位数组之和
		        var sumJiShuChild1=0; //奇数位*2 >9 的分割之后的数组个位数之和
		        var sumJiShuChild2=0; //奇数位*2 >9 的分割之后的数组十位数之和
		        var sumTotal=0;
		        for(var m=0;m<arrJiShu.length;m++){
		            sumJiShu=sumJiShu+parseInt(arrJiShu[m]);
		        }
		        
		        for(var n=0;n<arrOuShu.length;n++){
		            sumOuShu=sumOuShu+parseInt(arrOuShu[n]);
		        }
		        
		        for(var p=0;p<jishu_child1.length;p++){
		            sumJiShuChild1=sumJiShuChild1+parseInt(jishu_child1[p]);
		            sumJiShuChild2=sumJiShuChild2+parseInt(jishu_child2[p]);
		        }      
		        //计算总和
		        sumTotal=parseInt(sumJiShu)+parseInt(sumOuShu)+parseInt(sumJiShuChild1)+parseInt(sumJiShuChild2);
		        
		        //计算Luhm值
		        var k= parseInt(sumTotal)%10==0?10:parseInt(sumTotal)%10;        
		        var luhm= 10-k;
		        
		        if(lastNum==luhm){
			        return true;
		        }
		        else{
			        return false;
		        }        
		    }
			  /**
			   * 封装一下JQ_Ajax
			   */
			   function  JqAjax(url,data,success,error){
			   	  var ajaxData = data?JSON.stringify(data):data;
			   	  $.ajax({
						type 		: "POST",
						dataType 	: "json",
						url 		: url,
						data 		: ajaxData,
						cache 		: false,
						contentType: "application/json; charset=utf-8",
						async 		: true,
						error		: function(jqXHR, textStatus, errorThrown){
							if(error){
								error(jqXHR);
							}
							try{
								sessionTimeOutJump(jqXHR);
								console.error(jqXHR);
								console.error(textStatus);
								console.error(errorThrown);
								   var xhr = jqXHR;
						           if(xhr && xhr.responseText){
						               var _json = JSON.parse(xhr.responseText);
						               if(!_json.res){
						                   message.error(_json.msg);
						               }else{
						                   message.error(xhr.responseText);
						               }
						           }else{
						               message.error("后端错误.");
						           }
						        }catch(ex){
						           message.error("后端错误.");
						           console.log(errorThrown);
						        }
						        switch (jqXHR.status){  
					                case(401):  
					                   alert("无权限执行此操作");  
					                    break;  
					            }  
						},
						success : function(json) {
							//封装下成功的操作
							if(json.result){
								if(success){
									success(json);
								}
							}else{
								var fieldError  =   json.msg.fieldError;
			                    var globalError =   json.msg.globalError;
			                    var msg         =   [];
			                    if(fieldError||globalError){
			                        if(globalError&&globalError.length >0){
			                            msg.push(globalError.join('<br/>'));
			                        }
			                        if(fieldError&&fieldError.length >0){
			                            msg.push(fieldError.join('<br/>'));
			                        }
			                    }else{
			                        msg[0]=json.msg;
			                    }
			                    message.error(msg.join(''));
			                    if(error){
									error();
								}
							}
						}
				  });
			   };  
			   function  JqAjaxNoJson(url,data,success,error){
			   	  $.ajax({
						type 		: "POST",
						dataType 	: "json",
						url 		: url,
						data 		: data,
						cache 		: false,
						async 		: true,
						error		: function(jqXHR, textStatus, errorThrown){
							if(error){
								error(jqXHR);
							}
							try{
								sessionTimeOutJump(jqXHR);

								console.error(jqXHR);
								console.error(textStatus);
								console.error(errorThrown);
								   var xhr = jqXHR;
						           if(xhr && xhr.responseText){
						               var _json = JSON.parse(xhr.responseText);
						               if(!_json.res){
						                   message.error(_json.msg);
						               }else{
						                   message.error(xhr.responseText);
						               }
						           }else{
						               message.error("后端错误.");
						           }
						        }catch(ex){
						           if(errorThrown){
						               message.error(errorThrown);
						           }else{
						               message.error("后端错误.");
						           }
						        }
						        switch (jqXHR.status){  
					                case(401):  
					                    alert("无权限执行此操作");  
					                    break;  
					            }  
						},
						success : function(json) {

							//封装下成功的操作
							if(json.result){
								if(success){
									success(json);
								}
							}else{
								var fieldError  =   json.msg.fieldError;
			                    var globalError =   json.msg.globalError;
			                    var msg         =   [];
			                    if(fieldError||globalError){
			                        if(globalError&&globalError.length >0){
			                            msg.push(globalError.join('<br/>'));
			                        }
			                        if(fieldError&&fieldError.length >0){
			                            msg.push(fieldError.join('<br/>'));
			                        }
			                    }else{
			                        msg[0]=json.msg;
			                    }
			                    message.error(msg.join(''));
			                    if(error){error();}
							}
						}
				  });
			   };  

			 function  sessionTimeOutJump(jqXHR){
		 		var sessionStatus = jqXHR.getResponseHeader('_xcrm_session_status');
		 		if('_timeout' == sessionStatus){
		 			window.location.href = mtLoginPath + '/login.jsp';
		 		}
			 }  

		</script>
</body>
</html>