<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="hosts" value="${pageContext.request.contextPath}" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="${hosts}/ace/assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="${hosts}/ace/assets/font-awesome/4.5.0/css/font-awesome.min.css" />
		
		
		<!-- page specific plugin styles -->
		<link rel="stylesheet" href="${hosts}/ace/assets/css/jquery-ui.min.css" />
		
		<!-- text fonts -->
		<link rel="stylesheet" href="${hosts}/ace/assets/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="${hosts}/ace/assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="${hosts}/ace/assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
		<link rel="stylesheet" href="${hosts}/ace/assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="${hosts}/ace/assets/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="${hosts}/ace/assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->
		<script src="${hosts}/ace/assets/js/ace-extra.min.js"></script>

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="${hosts}/ace/assets/js/html5shiv.min.js"></script>
		<script src="${hosts}/ace/assets/js/respond.min.js"></script>
		<![endif]-->
		
		<!--[if !IE]> -->
		<script src="${hosts}/ace/assets/js/jquery-2.1.4.min.js"></script>

		<!-- <![endif]-->
		
		<!--[if IE]>
		<script src="${hosts}/ace/assets/js/jquery-1.11.3.min.js"></script>
		<![endif]-->
		
		<script src="${hosts}/ace/assets/layui/layer/layer.js"></script>
		
		
		
		<script type="text/javascript">
	jQuery(function($){  
	    $.datepicker.regional['zh-CN'] = {  
	        closeText: '关闭',  
	        prevText: '<上月',  
	        nextText: '下月>',  
	        currentText: '今天',  
	        monthNames: ['一月','二月','三月','四月','五月','六月',  
	        '七月','八月','九月','十月','十一月','十二月'],  
	        monthNamesShort: ['一','二','三','四','五','六',  
	        '七','八','九','十','十一','十二'],  
	        dayNames: ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'],  
	        dayNamesShort: ['周日','周一','周二','周三','周四','周五','周六'],  
	        dayNamesMin: ['日','一','二','三','四','五','六'],  
	        weekHeader: '周',  
	        dateFormat: 'yy-mm-dd',  
	        firstDay: 1,  
	        isRTL: false,  
	        showMonthAfterYear: true,  
	        yearSuffix: '年'};  
	    $.datepicker.setDefaults($.datepicker.regional['zh-CN']);  
	});
	
	</script>
	
		
		