<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="hosts" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>添加</title>

		<meta name="description" content="Common form elements and layouts" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		<jsp:include page="/ace/include.jsp"/>
		
	</head>

	
	
	<body class="no-skin" style="background-color: #FFFFFF;margin-top:20px;">
	
	   <div class="row">
		 <div class="col-xs-12">
	         <!-- PAGE CONTENT BEGINS -->
			<form class="form-horizontal" role="form" id="form-add" action="${hosts}/menu/update.do" method="post">
	               <input type="hidden" id="form-field-icon-1" name="groupid" value="${entity.groupid}"/>
	            <div class="form-group" align="center">
					<div class="col-sm-12">
					    <label class="control-label no-padding-right">小组:</label>
						<span class="input-icon input-icon-right">
							<input type="text" id="form-field-icon-1" name="groupname" value="${entity.groupname}"/>
						</span>
						
						<label class="control-label no-padding-right">职责:</label>
						<span class="input-icon input-icon-right">
							<input type="text" id="form-field-icon-2" name="groupdesc" value="${entity.groupdesc}"/>
						</span>
					</div>
				</div>
	   			<div class="form-group" align="center">
					<div class="col-sm-12">
					    <button type="submit" class="btn btn-primary">
					    <i class="ace-icon fa fa-check align-top bigger-125"></i>
					          保存
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
				$('#form-add').submit(function(){
					var jsonData = $("#form-add").serializeArray();
					console.log(jsonData);
					 $.ajax({
			             type: "POST",
			             url: "${hosts}/group/update.do",
			             data: jsonData,
			             dataType: "json",
			             success: function(data){
			               if(data.success){
			            	   var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
							   parent.layer.close(index); //再执行关闭
							   parent.$('#dynamic-table').DataTable().ajax.reload( null, false);
			               }else{
			            	   layer.msg('添加失败', {icon: 5}); 
			               }
			             }
			         });
					return false;
				});
			
			});
		</script>
	
	
	</body>
</html>