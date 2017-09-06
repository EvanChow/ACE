<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="hosts" value="${pageContext.request.contextPath}" />

		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='${hosts}/ace/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="${hosts}/ace/assets/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->
		<script src="${hosts}/ace/assets/js/jquery-ui.min.js"></script>
		<script src="${hosts}/ace/assets/js/jquery.ui.touch-punch.min.js"></script>
		
		<!--[if lte IE 8]>
		  <script src="${hosts}/ace/assets/js/excanvas.min.js"></script>
		<![endif]-->
		<script src="${hosts}/ace/assets/js/jquery-ui.custom.min.js"></script>
		<script src="${hosts}/ace/assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="${hosts}/ace/assets/js/jquery.easypiechart.min.js"></script>
		<script src="${hosts}/ace/assets/js/jquery.sparkline.index.min.js"></script>
		<script src="${hosts}/ace/assets/js/jquery.flot.min.js"></script>
		<script src="${hosts}/ace/assets/js/jquery.flot.pie.min.js"></script>
		<script src="${hosts}/ace/assets/js/jquery.flot.resize.min.js"></script>
		<!-- 菜单 -->
		<script src="${hosts}/ace/assets/js/tree.min.js"></script>
		
		
		
		<!-- 数据表格组件 -->
		<script src="${hosts}/ace/assets/js/jquery.dataTables.min.js"></script>
		<script src="${hosts}/ace/assets/js/jquery.dataTables.bootstrap.min.js"></script>
		<script src="${hosts}/ace/assets/js/dataTables.buttons.min.js"></script>
		<script src="${hosts}/ace/assets/js/buttons.flash.min.js"></script>
		<script src="${hosts}/ace/assets/js/buttons.html5.min.js"></script>
		<script src="${hosts}/ace/assets/js/buttons.print.min.js"></script>
		<script src="${hosts}/ace/assets/js/buttons.colVis.min.js"></script>
		<script src="${hosts}/ace/assets/js/dataTables.select.min.js"></script>
		
		
		

		<!-- ace scripts -->
		<script src="${hosts}/ace/assets/js/ace-elements.min.js"></script>
		<script src="${hosts}/ace/assets/js/ace.min.js"></script>