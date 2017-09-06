<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="hosts" value="${pageContext.request.contextPath}" />

<div class="tab-content" id="ace-tab-content" style="padding:0 0 0 0;border: 0 0 0 0;">
	<div id="home4" class="tab-pane in active">
		<iframe id="mainFrame" name="mainFrame" scrolling="no" width="100%" height="100%" frameborder="0" style="padding: 0px; width: 100%; min-height: 800px;"
		 src="${hosts}/jump.do?jsp=/homePage" >
		
		</iframe>
	</div>
	
</div>