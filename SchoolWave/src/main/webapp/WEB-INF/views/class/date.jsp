<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- ng-controller="classManByDateController as vm" -->
<div class="row" >
    <div class="col-md-12">
        <div class="portlet light">
            <div class="portlet-title">
                <div class="caption font-green">
                    <span class="caption-subject bold uppercase">班级管理>>创建班级</span>
                </div>
            </div>
            <div class="portlet-body">
                <div class="form-horizontal" role="form">
                    <div class="form-body">
                        <div class="form-group">
                            <label class="col-md-3 control-label">批次</label>
                            <div class="col-md-9">
                               <select class="form-control input-large input-inline margin-right-10" ></select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">课程</label>
                            <div class="col-md-9">
                               <select class="form-control input-large input-inline margin-right-10" >
                               	</select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-3 control-label">班级名称</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control input-large" placeholder=""  maxlength="140">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">学费标准</label>
                            <div class="col-md-6">
                                <input type="text" maxlength="10" class="form-control input-large" placeholder="" >元/期
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">课次</label>
                            <div class="col-md-6">
                                <input type="text" maxlength="10" class="form-control input-large" placeholder="" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">额定人数</label>
                            <div class="col-md-3">
                                <input type="text" maxlength="10" class="form-control input-large" placeholder="" >
                            </div>
                            <div class="col-md-3">
                                <input type="checkbox" class="checkboxes">限制人数
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">课表方案</label>
                            <div class="col-md-6">
                                <select class="form-control input-large input-inline margin-right-10" ></select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">开班时间</label>
                            <div class="col-md-3">
                                 <input type="text" maxlength="10" class="form-control input-large" placeholder="" >
                            </div>
                            <div class="col-md-3">
                                <input type="checkbox" class="checkboxes"> 开班时间待定
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">老师</label>
                            <div class="col-md-6">
                                <select class="form-control input-large input-inline margin-right-10" ></select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">备注</label>
                            <div class="col-md-9">
                                <input type="text" maxlength="500" 
                                class="form-control input-large" placeholder="">
                            </div>
                        </div>
                    </div>
                    <div class="form-actions">
                        <div class="row">
                            <div class="col-md-offset-3 col-md-9">
                                <button  id="btnSaveShopInfoLoad" class="btn green">&nbsp;&nbsp;&nbsp;&nbsp;创建&nbsp;&nbsp;&nbsp;&nbsp;</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>