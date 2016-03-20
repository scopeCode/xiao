<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!doctype html>
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
	    <title  data-ng-bind=" ' 云客儿 |  ' + $state.current.data.pageTitle"></title>
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
	    <meta content="" name="description"/>
	    <meta content="" name="author"/>
	 
	   
</head>
<body ng-controller="AppController" class="page-header-fixed page-sidebar-closed-hide-logo page-container-bg-solid">

    
    <div class="page-footer" ng-include="'common/footer.html'"></div>
    
	<!--[if lt IE 9]>
	<script src="http://localhost:8012/xcrm-web/res/assets/global/plugins/respond.min.js"></script>
	<script src="http://localhost:8012/xcrm-web/res/assets/global/plugins/excanvas.min.js"></script>
	<![endif]-->

	<script src="http://localhost:8012/xcrm-web/res/assets/global/plugins/angular/angular.js" type="text/javascript"></script>
	<script src="http://localhost:8012/xcrm-web/res/assets/global/plugins/angular/angular-sanitize.min.js" type="text/javascript"></script>
	<script src="http://localhost:8012/xcrm-web/res/assets/global/plugins/angular/plugins/angular-ui-router.min.js" type="text/javascript"></script>
	<script src="http://localhost:8012/xcrm-web/res/assets/global/plugins/angular/plugins/ui-bootstrap-tpls.min.js" type="text/javascript"></script>
	<script src="http://localhost:8012/xcrm-web/res/assets/global/plugins/angular/plugins/ocLazyLoad.min.js" type="text/javascript"></script>
	
	<script src="http://localhost:8012/xcrm-web/res/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
	<script src="http://localhost:8012/xcrm-web/res/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="http://localhost:8012/xcrm-web/res/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"
	        type="text/javascript"></script>
	<script src="http://localhost:8012/xcrm-web/res/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
	
	<script src="http://localhost:8012/xcrm-web/res/single/js/app.js" type="text/javascript"></script>
	<script src="http://localhost:8012/xcrm-web/res/assets/global/scripts/app.js" type="text/javascript"></script>
	<script src="http://localhost:8012/xcrm-web/res/assets/layout/scripts/layout.js" type="text/javascript"></script>
	<script src="http://localhost:8012/xcrm-web/res/assets/layout/scripts/quick-sidebar.js" type="text/javascript"></script>
	<script src="http://localhost:8012/xcrm-web/res/single/js/common/directives.js" type="text/javascript"></script>
	
</body>
</html>