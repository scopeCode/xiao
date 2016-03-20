<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>登录</title>
	<meta content="text/html;charset=UTF-8" http-equiv="content-type">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="/res/lib/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<script type="text/javascript" src="/res/lib/jquery/jquery-1.12.0.js"></script>
	<script type="text/javascript" src="/res/lib/bootstrap/bootstrap.min.js"></script>
</head>
<body>

        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>Bootstrap</strong> Login Form</h1>
                            <div class="description">
                            	<p>
	                            	This is a free responsive login form made with Bootstrap. 
	                            	Download it on <a href="http://azmind.com"><strong>AZMIND</strong></a>, customize and use it as you like!
                            	</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Login to our site</h3>
                            		<p>Enter your username and password to log on:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-key"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Username</label>
			                        	<input type="text" name="form-username" placeholder="Username..." class="form-username form-control" id="form-username">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Password</label>
			                        	<input type="password" name="form-password" placeholder="Password..." class="form-password form-control" id="form-password">
			                        </div>
			                        <button type="submit" class="btn">Sign in!</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		<div class="backstretch" style="left: 0px; top: 0px; overflow: hidden; margin: 0px; padding: 0px; height: 568px; width: 1903px; z-index: -999999; position: fixed;">
		    <img src="/res/img/login_bg.jpg" style="position: absolute; margin: 0px; padding: 0px; border: none; width: 1903px; height: 1268.67px; max-height: none; max-width: none; z-index: -999999; left: 0px; top: -350.333px;">
	 	</div>
</body>
</html>