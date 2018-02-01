
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="hosts" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>新增</title>

		<meta name="description" content="Common form elements and layouts" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		<jsp:include page="/ace/include.jsp"/>
		
	</head>

	
	
	<body class="no-skin" style="background-color: #FFFFFF;margin-top:20px;">
	
	   <div class="row">
		 <div class="col-xs-12">
	         <!-- PAGE CONTENT BEGINS -->
			<form class="form-horizontal" role="form" id="form-add" action="${hosts}/schedulejob/add.do" method="post">
	               
				           <div class="form-group" align="center">
						   <div class="col-sm-12">
						    <label class="control-label no-padding-right">任务名称:</label>
							<span class="input-icon input-icon-right">
								<input type="text" id="form-field-icon-1" name="name" value=""/>
							</span>
						 
					 
				             <label class="control-label no-padding-right">任务别名:</label>
							<span class="input-icon input-icon-right">
									<input type="text" id="form-field-icon-2" name="aliasName" value=""/>
							</span>
							</div>
							   </div>
						    
							   
					 
				           <div class="form-group" align="center">
						   <div class="col-sm-12">
						    <label class="control-label no-padding-right">任务分组:</label>
							<span class="input-icon input-icon-right">
								<input type="text" id="form-field-icon-1" name="jobgroup" value=""/>
							</span>
						 
					 
				             <label class="control-label no-padding-right">触发器    :</label>
							<span class="input-icon input-icon-right">
									<input type="text" id="form-field-icon-2" name="jobTrigger" value=""/>
							</span>
							</div>
							   </div>
						    
							   
					 
				           <div class="form-group" align="center">
						   <div class="col-sm-12">
						    <label class="control-label no-padding-right">任务状态:</label>
							<span class="input-icon input-icon-right">
								
								<select name="status" style="width:190px;">
								  <option value="1">启动</option>
								  <option value="0">停止</option>
								</select>
							</span>
						 
					 
				             <label class="control-label no-padding-right">表达式  :</label>
							<span class="input-icon input-icon-right">
									<input type="text" id="form-field-icon-2" name="cronExpression" value=""/>
							</span>
							</div>
							   </div>
						    
							   
					 
				           <div class="form-group" align="center">
						   <div class="col-sm-12">
						    <label class="control-label no-padding-right">是否同步:</label>
							<span class="input-icon input-icon-right">
								<select name="isSync" style="width:190px;">
								  <option value="1">同步</option>
								  <option value="0">异步</option>
								</select>
							</span>
						 
					 
				             <label class="control-label no-padding-right">任务描述:</label>
							<span class="input-icon input-icon-right">
									<input type="text" id="form-field-icon-2" name="description" value=""/>
							</span>
							</div>
							   </div>
						    
							   
					 
						 
					 
						    
							   
					 
				           <div class="form-group" align="center">
						   <div class="col-sm-12">
						    <label class="control-label no-padding-right">任务类:</label>
							<span class="input-icon input-icon-right">
								<input type="text" id="form-field-icon-1" name="classname" value=""/>
							</span>
						 
					 
				             <label class="control-label no-padding-right">任务类(sync):</label>
							<span class="input-icon input-icon-right">
									<input type="text" id="form-field-icon-2" name="classnamesync" value=""/>
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
					 $.ajax({
			             type: "POST",
			             url: "${hosts}/schedulejob/add.do",
			             data: jsonData,
			             dataType: "json",
			             success: function(data){
			               if(data.success){
			            	   var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
							   parent.layer.close(index); //再执行关闭
							   parent.$('#dynamic-table').DataTable().ajax.reload( null, false);
			               }else{
			            	   layer.msg('新增失败', {icon: 5}); 
			               }
			             }
			         });
					return false;
				});
			
			});
		</script>
	
	
	</body>
</html>