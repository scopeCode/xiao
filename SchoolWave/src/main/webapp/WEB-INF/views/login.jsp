<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>校管家</title>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <link rel="shortcut icon" href="/favicon.ico">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <%@ include file="common.jsp" %>
</head>
<body  class="login"> 
<!--   -->
	<input type="hidden" id="inputErrors"  value="${errors}" >
	<div class="login-box">
	    <div class="row">
	            <div CLASS="col-md-12" >
	                <div class="login-logo">logo</div>
		                <form class="form-horizontal" id="loginForm" action="login"  method="post" >
	                          <input type="hidden" name="appId" value="xcrm-web"/>
	                          <div class="form-group ">
	                              <input type="tel" autocomplete="off" class="form-control1 " placeholder="请输入手机号" maxlength="11" 
	                                name="username"   id="inputMobile">
	                          </div>
	                          <div class="form-group ">
	                              <input type="password" autocomplete="off" class="form-control1" 
	                                placeholder="密码为8-20位数字或字母" 
	                                id="inputPwd" name="password" maxlength="20" minlength="8">
	                              <div class="pwd-tool" style="display: none;" id="divPwdController">
	                                  <span class="pwd-tool-btn"  id="spanClearPwd"><i class="icon icon-guanbi"></i></span>
	                                  <span class="pwd-tool-btn"  id="spanViewPwd"><i class="icon icon-faxianxianshimima"></i></span>
	                              </div>
	                          </div>
	                          <button type="button" class="btn btn-green btn-block " id="btnLoginSubmit">登录</button>
	                      </form>
	            </div>
	    </div>
	</div>
	<script src="<%=STATIC_CDN_PATH%>lib/bootstrap/scrollReveal.min.js<%=CDN_VERSION%>"></script>
	<script src="<%=STATIC_CDN_PATH%>lib/bootstrap/bootstrap-hover-dropdown.min.js<%=CDN_VERSION%>"></script>
	<script type="text/javascript">
         $(document).ready(function(){
            var login = {
                build:function(){
                  login.bindEvent();
                  login.showError();

                  //图片轮换的处理
                  window.scrollReveal = new scrollReveal({
                      after: '0s', enter: 'bottom',move: '24px',over: '0.66s',
                      easing: 'ease-in-out',viewportFactor: 0.33,reset: false,init: true});
                },
                bindEvent:function(){
                  try{
                        //密码框的处理 ---  清理密码框
                        $(document).on('click',"#spanClearPwd",function(){
                            $("#divPwdController").hide(); 
                            $("#inputPwd").val("").attr("type","password");;});
                        //密码框的处理 ---  查看密码框
                        $(document).on('click',"#spanViewPwd",function(){
                            var inputType = $("#inputPwd");
                            var toType    = '';
                            switch(inputType.attr("type")){
                                case "password":{inputType.attr("type",'text');}break;
                                case "text":{inputType.attr("type",'password')}break;
                            }});
                        //登录按钮点击 触发事件的控制
                        $(document).on('click','#btnLoginSubmit',function(){
                            var  mobile = $.trim($("#inputMobile").val());
                            var  pwd    = $.trim($("#inputPwd").val());
                            var  jcaptchaCode = $("#jcaptchaCode");
                            if(!REGEX.mobile.test(mobile)){message.error('手机号格式不正确');return false;}
                            if(!REGEX.pwd.test(pwd)){message.error('密码为8-20位数字或字母');return false;}
                            if(jcaptchaCode.length>0){
                                var code = $.trim(jcaptchaCode.val());
                                if(code ==""){message.error('图形验证码不可为空');return false;}
                            }
                            $("#loginForm").submit();});
                        //divPwdController
                        $("#inputPwd").on('input',function(e){  
                            var  inputPwdVal = $.trim($("#inputPwd").val());
                            if(inputPwdVal.length > 0){
                                $("#divPwdController").show();
                            }else{
                                $("#divPwdController").hide();
                            }
                        }); 
                        //监听 enter 事件
                        $(document).on('keydown',function(event){
                             if(event.keyCode==13)
                             {
                                 document.getElementById("btnLoginSubmit").click();   
                                 return false;                               
                             }
                        });
                   }catch(e){
                      console.error(e);
                  }
                },//bindEvent:function(){  end
                showError:function(){
                    try
                    {
                      var inputErrorMsg = $.trim($("#inputErrors").val());
                      if(inputErrorMsg){
                    	  message.error(inputErrorMsg);
                      }
                  }catch(e){
                      console.error(e);
                  }
                },//showError:function(){} end
            };
            login.build();
         }); 
      </script>
</body>
</html>
