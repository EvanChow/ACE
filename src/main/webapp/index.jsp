<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.avalon.model.sys.User"%>
<%@ page import="org.apache.shiro.SecurityUtils"%>
<!DOCTYPE html>
<html>
<head>
<title>ACE</title>

<%
	String name = (String)SecurityUtils.getSubject().getPrincipal();
	User user=(User)session.getAttribute("USER");
	if(name==null){
	    request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
	}else{
	    request.getRequestDispatcher("/WEB-INF/jsp/index.jsp").forward(request, response);
	}
%>
</head>
<body>
<%=SecurityUtils.getSubject().getPrincipal() %>
</body>
</html>