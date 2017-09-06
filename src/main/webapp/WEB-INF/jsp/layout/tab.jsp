<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="hosts" value="${pageContext.request.contextPath}" />
	<ul class="nav nav-tabs padding-12 tab-color-blue background-blue" id="ace-myTab">
		<li class="active">
			<a data-toggle="tab" href="#home4">首页</a>
		</li>
    </ul>
	
	<div class="nav-search" id="nav-search">
		<form class="form-search">
			<span class="input-icon">
				<input type="text" placeholder="搜索 ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
				<i class="icon-search nav-search-icon"></i>
			</span>
		</form>
	</div> 
 <!--#nav-search -->