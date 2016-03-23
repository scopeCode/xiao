<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="page-header-inner ">

        <!-- BEGIN LOGO -->
        <div class="page-logo">
            <a href="javascritp:void(0);">
              	<img src="" alt="logo" class="logo-default"/> 
            </a>
        </div>
        <!-- END LOGO -->

        <!-- BEGIN PAGE TOP -->
        <div class="page-top">
            <div class="top-menu">
                <ul class="nav navbar-nav pull-right">     
                    <li class="dropdown dropdown-user">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
                           data-close-others="true">
                            <img alt="" class="img-circle" src="{{settings.staticUrl}}/assets/layout/img/avatar.png"/>
                            <span class="username username-hide-on-mobile" id="spanTopLoginName"> 张三 </span>
                            <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-default">
                            <li>
                                <a href="logout">
                                    <i class="icon-key"></i> 退出 </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>