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
	 $scope.$on('$viewContentLoaded', function() {
		 var data =  $state.current.data;
		 if(data){
				$scope.currentKey = data.key;
				//左侧导航的 arr
				$scope.leftMenus =[];
				//初始化设定 左侧的导航条的数据
				//课程管理
				var lessonMan = {
						ico:'icon-wallet',
						text:'课程报名',
						key:'lesson',
						sub:[
						     {
						    	 text:'新生报名',
						    	 subkey:'new',
						    	 url:''
						     },
						     {
						    	 text:'学员报名',
						    	 subkey:'old',
						    	 url:''
						     }
						]
				};
				//班级管理
				var classMan = {
						ico:'icon-users',
						text:'班级管理',
						key:'class',
						sub:[
						     {
						    	 text:'创建班级',
						    	 subkey:'index',
						    	 url:'#/class_index.html'
						     }
						]
				};
				//财务管理
				var financeMan = {
						ico:'icon-briefcase',
						text:'财务管理',
						key:'finance',
						sub:[
						     {
						    	 text:'订单记录',
						    	 subkey:'order',
						    	 url:''
						     },
						     {
						    	 text:'日结对账',
						    	 subkey:'day',
						    	 url:''
						     },
						     {
						    	 text:'日常支出',
						    	 subkey:'out',
						    	 url:''
						     },
						     {
						    	 text:'财务分析',
						    	 subkey:'tj',
						    	 url:''
						     }
						]
				};
				//设置
				var settingsMan = {
						ico:'icon-settings',
						text:'设置',
						key:'settings',
						sub:[
						     {
						    	 text:'开班批次',
						    	 subkey:'',
						    	 url:''
						     },
						     {
						    	 text:'课程管理',
						    	 subkey:'',
						    	 url:''
						     },
						     {
						    	 text:'日常支出',
						    	 subkey:'',
						    	 url:''
						     },
						     {
						    	 text:'教材杂项',
						    	 subkey:'',
						    	 url:''
						     }
						]
				};
				$scope.leftMenus.push(lessonMan);
				$scope.leftMenus.push(classMan);
				$scope.leftMenus.push(financeMan);
				$scope.leftMenus.push(settingsMan);
			}
	 });
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
                pageTitle: '首页',hasChildMenu:false,pageFlag:'index.html',key:'index',subkey:''
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
                pageTitle: '班级管理',hasChildMenu:false,pageFlag:'class_index.html',key:'class',subkey:''
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
                pageTitle: '班级管理-按期创建班级',hasChildMenu:false,pageFlag:'new_date_class.html',key:'class',subkey:'date'
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
                pageTitle: '班级管理-按次创建班级',hasChildMenu:false,pageFlag:'new_times_class.html',key:'class',subkey:'times'
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