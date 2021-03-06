<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ace" value="${pageContext.request.contextPath}" />

<div class="ace-settings-container" id="ace-settings-container">					
<!-- /.ace-settings-box -->
<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
	<i class="ace-icon fa fa-cog bigger-130"></i>
</div>

<div class="ace-settings-box clearfix" id="ace-settings-box">
	<div class="pull-left width-50">
		<div class="ace-settings-item">
			<div class="pull-left">
				<select id="skin-colorpicker" class="hide">
					<option data-skin="no-skin" value="#438EB9">#438EB9</option>
					<option data-skin="skin-1" value="#222A2D">#222A2D</option>
					<option data-skin="skin-2" value="#C6487E">#C6487E</option>
					<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
				</select>
			</div>
			<span>&nbsp; 选择皮肤</span>
		</div>

		<div class="ace-settings-item">
			<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-navbar" autocomplete="off" />
			<label class="lbl" for="ace-settings-navbar">固定导航栏</label>
		</div>

		<div class="ace-settings-item">
			<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-sidebar" autocomplete="off" />
			<label class="lbl" for="ace-settings-sidebar">固定菜单栏</label>
		</div>

		<div class="ace-settings-item">
			<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-breadcrumbs" autocomplete="off" />
			<label class="lbl" for="ace-settings-breadcrumbs">固定标签页</label>
		</div>

		<div class="ace-settings-item">
			<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" autocomplete="off" />
			<label class="lbl" for="ace-settings-rtl"> 从右到左</label>
		</div>

		<div class="ace-settings-item">
			<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-add-container" autocomplete="off" />
			<label class="lbl" for="ace-settings-add-container">
				内嵌
			</label>
		</div>
	</div><!-- /.pull-left -->

	<div class="pull-left width-50">
		<div class="ace-settings-item">
			<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" autocomplete="off" />
			<label class="lbl" for="ace-settings-hover">子菜单悬浮</label>
		</div>

		<div class="ace-settings-item">
			<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" autocomplete="off" />
			<label class="lbl" for="ace-settings-compact">收缩菜单</label>
		</div>

		<div class="ace-settings-item">
			<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" autocomplete="off" />
			<label class="lbl" for="ace-settings-highlight">切换列表</label>
		</div>
	</div><!-- /.pull-left -->
</div>

</div><!-- /.ace-settings-container -->