<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 左侧 菜单栏的页面html -->
<ul class="page-sidebar-menu  page-header-fixed page-sidebar-menu-hover-submenu" 
	data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
		<li class="nav-item " ng-repeat="item in leftMenus" 
			ng-class="{true:'active open',false:''}[item.key==currentKey]">
             <a href="javascript:void(0)" class="nav-link nav-toggle">
                 <i class="{{item.ico}}"></i>
                 <span class="title">{{item.text}}</span>
                 <span class="arrow open" ng-if="item.key==currentKey"></span>
             </a>
             <ul class="sub-menu" >
                 <li class="nav-item" ng-repeat='sub in item.sub'>
                     <a href="{{sub.url}}" class="nav-link">
                         <span class="title ">{{sub.text}}</span>
                         <span class="selected" ng-if="sub."></span> 
                     </a>
                 </li>
             </ul>
         </li>
</ul>	