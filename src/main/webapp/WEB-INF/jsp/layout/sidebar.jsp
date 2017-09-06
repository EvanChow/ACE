<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="hosts" value="${pageContext.request.contextPath}" />

<script type="text/javascript">
$(function(){
	$("#avalon-signal").click(function(){
		layer.open({
		  type: 2,
		  id:'search',
		  title: '查询',
		  shadeClose: true,
		  shade: 0,
		  area: ['500px', '600px'],
		  content: '${hosts}/jump.do?jsp=/sys/menu/menu_tree' //iframe的url
		});
	});
	$("#avalon-pencil").click(function(){
		alert(1);
	});
	$("#avalon-users").click(function(){
		alert(1);
	});
	$("#avalon-cogs").click(function(){
		alert(1);
	});
	
});
</script>

<div class="sidebar-shortcuts" id="sidebar-shortcuts">
		<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
			<button class="btn btn-success" id="avalon-signal">
				<i class="ace-icon fa fa-signal"></i>
			</button>

			<button class="btn btn-info"  id="avalon-pencil">
				<i class="ace-icon fa fa-pencil"></i>
			</button>

			<button class="btn btn-warning"  id="avalon-users">
				<i class="ace-icon fa fa-users"></i>
			</button>

			<button class="btn btn-danger"  id="avalon-cogs">
				<i class="ace-icon fa fa-cogs"></i>
			</button>
		</div>

		<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
			<span class="btn btn-success"></span>

			<span class="btn btn-info"></span>

			<span class="btn btn-warning"></span>

			<span class="btn btn-danger"></span>
		</div>
	</div>