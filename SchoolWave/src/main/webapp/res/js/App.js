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

/* Setup App Main Controller */
YunKerApp.controller('AppController', ['$scope', '$rootScope','$location','$http','$state','settings',
                                       function($scope, $rootScope,$location,$http,$state,settings) {
}]);

/* Setup Layout Part - Header */
YunKerApp.controller('HeaderController', ['$scope', function($scope) {
    $scope.$on('$includeContentLoaded', function() {
        Layout.initHeader();
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
        })
        .state('class_index', {
            url: "/class_index.html",
            templateUrl: "class/v_tpl_index",
            data: {
                pageTitle: '班级管理',hasChildMenu:false,pageFlag:'class_index.html'
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
        }) 
        .state('new_date_class', {
            url: "/new_date_class.html",
            templateUrl: "class/v_tpl_date_index",
            data: {
                pageTitle: '班级管理-按期创建班级',hasChildMenu:false,pageFlag:'new_date_class.html'
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
        })
        .state('new_times_class', {
            url: "/new_times_class.html",
            templateUrl: "class/v_tpl_times_index",
            data: {
                pageTitle: '班级管理-按次创建班级',hasChildMenu:false,pageFlag:'new_times_class.html'
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