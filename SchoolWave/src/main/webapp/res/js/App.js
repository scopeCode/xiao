/**
 * 项目入口
 * Created by WG on 2016/01/05.
 */
var YunKerApp = angular.module("YunKerApp", [
    "ui.router",
    "ui.bootstrap",
    "oc.lazyLoad",
    "ngSanitize"
]);

//"oc.lazyLoad" 的处理
YunKerApp.config(['$ocLazyLoadProvider','$httpProvider', function($ocLazyLoadProvider,$httpProvider) {
    $ocLazyLoadProvider.config({});
    //$httpProvider.interceptors.push('authInterceptor');
}]);


YunKerApp.factory('settings', ['$rootScope', function($rootScope) {
    var settings = {
        layout: {
            pageSidebarClosed: false,
            pageContentWhite: true,
            pageBodySolid: false,
            pageAutoScrollOnLoad: 1000
        },
        mtPath          : mtPath,    //ajax的请求路径      
        staticUrl       : staticPath,//静态资源的路径
        assetsPath      : staticPath + 'assets',
        globalPath      : staticPath + 'assets/global',
        layoutPath      : staticPath + 'assets/layouts/layout'
    };
    $rootScope.settings = settings;
    return settings;
}]);

/* Setup Layout Part - Header */
YunKerApp.controller('HeaderController', ['$scope', function($scope) {
    $scope.$on('$includeContentLoaded', function() {
        Layout.initHeader();
    });
}]);

YunKerApp.controller('HeaderMenuController', ['$scope','$location', function($scope, $location) {
	//定义顶部的 菜单信息
    $scope.menus = [];
    //监听如果中间内容加载完成后,是否有新的菜单产生;
    $scope.$on("HeadMenuChange",function(event,menus){
        $scope.menus = menus;
    });
}]);

/* Setup Layout Part - Sidebar */
YunKerApp.controller('SidebarController', ['$scope', function($scope) {
    $scope.$on('$includeContentLoaded', function() {
        Layout.initSidebar(); // init sidebar
    });
}]);

/* Setup Layout Part - Quick Sidebar */
YunKerApp.controller('QuickSidebarController', ['$scope', function($scope) {
    $scope.$on('$includeContentLoaded', function() {
        setTimeout(function(){
            QuickSidebar.init(); // init quick sidebar
        }, 2000);
    });
}]);

/* Setup Layout Part - Footer */
YunKerApp.controller('FooterController', ['$scope', function($scope) {
    $scope.$on('$includeContentLoaded', function() {
        Layout.initFooter(); // init footer
    });
}]);

/* Setup Rounting For All Pages */
YunKerApp.config(['$stateProvider','$urlRouterProvider',function($stateProvider, $urlRouterProvider) {
	
    //找不到就跳转到
    $urlRouterProvider.otherwise("/index.html");
    //开始路由
    $stateProvider
        .state('index', {
            url: "/index.html",
            templateUrl: "v_tpl_index",
            data: {
                pageTitle: '__首页__',hasChildMenu:false,pageFlag:'index.html'
            },
            resolve: {
                deps: ['$ocLazyLoad','settings', function($ocLazyLoad,settings) {
	            	 return $ocLazyLoad.load([
	                     {
	                          name: 'YunKerApp',
	                          files: [
	                                  	settings.staticUrl + 'assets/pages/css/about.min.css'
	                          ]
	                     }
                    ]);
                }]
            }
        });
}]);


/* Init global settings and run the app */
YunKerApp.run(["$rootScope", "settings", "$state", function($rootScope, settings, $state) {
    $rootScope.$state       = $state;
    $rootScope.$settings    = settings;
}]);