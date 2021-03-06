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
	               <input type="hidden" id="form-field-icon-1" name="uid" value="${entity.uid}"/>
	           <div class="form-group" align="center">
					<div class="col-sm-12">
					    <label class="control-label no-padding-right">账号:</label>
						<span class="input-icon input-icon-right">
							<input type="text" id="form-field-icon-1" name="agentid" value="${entity.agentid}"/>
						</span>
						
						<label class="control-label no-padding-right">姓名:</label>
						<span class="input-icon input-icon-right">
							<input type="text" id="form-field-icon-2" name="username" value="${entity.username}"/>
						</span>
					</div>
				</div>
				
				
				
				
				<div class="form-group" align="center">
					<div class="col-sm-12">
					    <label class="control-label no-padding-right">密码:</label>
						<span class="input-icon input-icon-right">
							<input type="text" id="form-field-icon-1" name="passwd" value="${entity.passwd}"/>
						</span>
						
						<label class="control-label no-padding-right">电话:</label>
						<span class="input-icon input-icon-right">
							<input type="text" id="form-field-icon-2" name="phone" value="${entity.phone}"/>
							
						</span>
					</div>
				</div>
				
				<div class="form-group" align="center">
					<div class="col-sm-12">
					    <label class="control-label no-padding-right">部门:</label>
						<span class="input-icon input-icon-right">
							<input type="hidden" id="form-departid" name="departid"  value="${entity.departid}"/>
							<input type="text" id="form-department" name="department"  value="${entity.department}"/>
						</span>
						
						<label class="control-label no-padding-right">小组:</label>
						<span class="input-icon input-icon-right">
							<input type="hidden" id="form-groupid" name="groupid"  value="${entity.groupid}"/>
							<input type="text" id="form-groupname" name="groupname"  value="${entity.groupname}"/>
						</span>
					</div>
				</div>
				<div class="form-group" align="center">
					<div class="col-sm-12">
					    <label class="control-label no-padding-right">职位:</label>
						<span class="input-icon input-icon-right">
							<input type="hidden" id="form-postion" name="postion"  value="${entity.postion}"/>
							<input type="text" id="form-job" name="job"  value="${entity.job}"/>
						</span>
						
						<label class="control-label no-padding-right">性别:</label>
						<span class="input-icon input-icon-right">
							<select class="form-control" id="form-sex" style="width:190px;"   name="sex">
							<c:if test="${entity.sex=='男'}">
							<option value="男" selected = "selected">男</option>
							<option value="女">女</option>
							<option value="不详">不详</option>
							</c:if>
							<c:if test="${entity.sex=='女'}">
							<option value="男" >男</option>
							<option value="女" selected = "selected">女</option>
							<option value="不详">不详</option>
							</c:if>
							<c:if test="${entity.sex=='不详'}">
							<option value="男" >男</option>
							<option value="女">女</option>
							<option value="不详" selected = "selected">不详</option>
							</c:if>
							
							
							</select>
						 </span>
					</div>
				</div>
				<div class="form-group" align="center">
					<div class="col-sm-12">
					    <label class="control-label no-padding-right">省份:</label>
						<span class="input-icon input-icon-right">
							<input type="text" id="form-field-icon-1" name="provense"/>
						</span>
						
						<label class="control-label no-padding-right">城市:</label>
						<span class="input-icon input-icon-right">
							<input type="text" id="form-field-icon-2" name="city"/>
							
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
			             url: "${hosts}/user/update.do",
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