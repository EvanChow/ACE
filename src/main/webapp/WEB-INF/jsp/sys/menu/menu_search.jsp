<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="hosts" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>搜索</title>

		<meta name="description" content="Common form elements and layouts" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		<jsp:include page="/ace/include.jsp"/>
		
	</head>

	
	
	<body class="no-skin" style="background-color: #FFFFFF;margin-top:20px;">
	
	   <div class="row">
		 <div class="col-xs-12">
	         <!-- PAGE CONTENT BEGINS -->
			<form class="form-horizontal" role="form" id="form-add" action="${hosts}/menu/add.do" method="post">
	               
	           <div class="form-group" align="center">
					<div class="col-sm-12">
					    <label class="control-label no-padding-right">菜单名称:</label>
						<span class="input-icon input-icon-right">
							<input type="text" id="form-field-icon-1" name="menuname"/>
						</span>
						
						<label class="control-label no-padding-right">上层菜单:</label>
						<span class="input-icon input-icon-right">
							<input type="text" id="form-field-icon-2" name="pid"/>
						</span>
					</div>
				</div>
				
				<div class="form-group" align="center">
					<div class="col-sm-12">
					   <label class="control-label no-padding-right">开始时间:</label>
						<span class="input-icon input-icon-right">
							<input type="text" id="datepickerstart" name="startTimeStr"/>
							<i class="ace-icon fa fa-calendar"></i>
						</span>
					   <label class="control-label no-padding-right">结束时间:</label>
						<span class="input-icon input-icon-right">
							<input type="text" id="datepickerend" name="endTimeStr"/>
							<i class="ace-icon fa fa-calendar"></i>
						</span>
					</div>
				</div>

	   			<div class="form-group" align="center" style="margin-top:180px;">
					<div class="col-sm-12">
					    <button type="submit" class="btn btn-primary">
					    <i class="ace-icon fa fa-check align-top bigger-125"></i>
					          搜索
					     </button>
					</div>
				</div>
	   
	        </form>
	     </div>
	   </div>
	
	
	
	
	
	<!-- basic scripts -->

		<jsp:include page="/ace/inend.jsp"/>
	
	<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
				$( "#datepickerstart" ).datepicker({
					showOtherMonths: true,
					selectOtherMonths: false,
					onSelect:function(dateText,inst){  
       				$("#datepickerend").datepicker("option","minDate",dateText);  
   					},
					dateFormat: "yymmdd"
				});
				
				$( "#datepickerend" ).datepicker({
					showOtherMonths: true,
					selectOtherMonths: false,
					onSelect:function(dateText,inst){  
       				 $("#datepickerstart").datepicker("option","maxDate",dateText);  
   					},
					dateFormat: "yymmdd"
				});

				
				$('#form-add').submit(function(){
					var jsonData = $("#form-add").serializeArray();
					var pramar="";
					for(var i=0;i<jsonData.length;i++){
						if(i==0){
							pramar+=""+jsonData[i].name+"="+jsonData[i].value;
						}else{
							pramar+="&"+jsonData[i].name+"="+jsonData[i].value;
						}
					}
					var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
					 parent.layer.close(index); //再执行关闭
					// parent.$('#dynamic-table').DataTable().ajax.reload( null, false);
					 parent.$('#dynamic-table').DataTable().ajax.url( '${hosts}/menu/dg.do?'+pramar).load();
					return false;
				});
				
				// 转为unicode 编码  
				function encodeUnicode(str) {  
				    var res = [];  
				    for ( var i=0; i<str.length; i++ ) {  
				    res[i] = ( "00" + str.charCodeAt(i).toString(16) ).slice(-4);  
				    }  
				    return "\\u" + res.join("\\u");  
				}
			
			});
		</script>
	
	
	</body>
</html>