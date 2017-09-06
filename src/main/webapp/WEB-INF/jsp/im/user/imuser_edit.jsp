<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="hosts" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>更新</title>

		<meta name="description" content="Common form elements and layouts" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		<link rel="stylesheet" href="${hosts}/ace/assets/layui/css/layui.css"  media="all">
		
	</head>
	
	<body>
	    
	    <form class="layui-form" action="">
	    
	     <div class="layui-form-item">
		    <label class="layui-form-label">单行输入框</label>
		    <div class="layui-input-block">
		      <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
		    </div>
		   
	     </div>
	    
	    
	    </form>
	    

	  <script src="${hosts}/ace/assets/layui/layui.js" charset="utf-8"></script>
	  
	  <script type="text/javascript">
	    layui.use(['form', 'layedit', 'laydate'], function(){
	    	
	    });
	  
	  </script>
	  
	</body>
</html>