<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="hosts" value="${pageContext.request.contextPath}" />
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>发现</title>

<link rel="stylesheet" href="http://res.layui.com/layui/src/css/layui.css">
<style>

</style>
</head>
<body>

<div style="margin: 15px;">
  <blockquote class="layui-elem-quote">此为自定义的【查找】页面，因需求不一，所以官方暂不提供该模版结构与样式，实际使用时，可移至该文件到你的项目中，对页面自行把控。
  <br>文件所在目录（相对于layui.js）：/css/modules/layim/html/find.html</blockquote>
</div>



<script src="http://res.layui.com/layui/src/layui.js"></script>
<script>
layui.use(['layim', 'laypage'], function(){
  var layim = layui.layim
  ,layer = layui.layer
  ,laytpl = layui.laytpl
  ,$ = layui.jquery
  ,laypage = layui.laypage;
  
  //一些添加好友请求之类的交互参见文档
  
});
</script>
</body>
</html>
