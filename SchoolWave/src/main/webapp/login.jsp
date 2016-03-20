<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>登录</title>
	<meta content="text/html;charset=UTF-8" http-equiv="content-type">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<div class="error">${shiroLoginFailure}</div>
	 <input type="hidden" id="inputErrorMsg" value="${errors}">
	
     <form class="form-signin" id="loginForm" action=""  method="post" >
     <input type="hidden" name="appId" value="xcrm-web"/>
       <h2 class="form-signin-heading">系统登录</h2>
        	手机号：<input placeholder="手机号" type="text" id="tel" 
        		name="username" maxlength="11" onkeyup="this.value=this.value.replace(/\D/g,'')"  
        		class="form-control"  value="15604090129" />
        	<br/>
                             密&nbsp;&nbsp;&nbsp;&nbsp;码：<input placeholder="登录密码"  type="password" id="pwd" maxlength="15" 
                             class="form-control" name="password" value="123456"/>
           <br/>
           下次自动登录：<input type="checkbox" name="rememberMe" value="true"><br/>
           <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
     </form>
	<script type="text/javascript" src="http://localhost:8012/xcrm-web/res/assets/global/plugins/jquery.min.js"></script>
	<script type="text/javascript">

	$(document).ready(function(){
		var error = $("#inputErrorMsg").val();
		if(error){
			alert(error);
		}	
	});
	</script>
  </body>
</html>
