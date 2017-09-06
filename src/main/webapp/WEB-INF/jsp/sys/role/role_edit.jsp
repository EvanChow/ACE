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
			<form class="form-horizontal" role="form" id="form-add" action="${hosts}/menu/add.do" method="post">
	           
	           <input type="hidden" name="menuids"  id="menuids"/>
	           <input type="hidden" id="form-field-icon-1" name="roleid" value="${entity.roleid}"/>
	           <table width="100%;">
	           <tr>
	           <td  width="50%;">
		           <div class="form-group" align="center">
								<div class="col-sm-12">
									<label class="control-label no-padding-right">角色:</label>
									<span class="input-icon input-icon-right">
										<input type="text" id="form-field-icon-1" name="rolename" value="${entity.rolename}"/>
									</span>
			
								 </div>
							  
				   </div>
	           </td>
	            
	            <td rowspan="3"  width="50%;">
	               
	            </td>
	            
	            
	           </tr>
	           
	           <tr>
	           <td>
	            <div class="form-group" align="center">
						     <div class="col-sm-12">
								<label class="control-label no-padding-right">类型:</label>
								<span class="input-icon input-icon-right">
									<select class="form-control" id="form-sex" style="width:190px;"   name="roletype">
										<c:if test="${entity.roletype==0}">
										<option value="0"  selected = "selected">职工</option>
										<option value="1">管理</option>
										<option value="8">系统管理员</option>
										<option value="9">超级管理员</option>
										</c:if>
										<c:if test="${entity.roletype==1}">
										<option value="0">职工</option>
										<option value="1"  selected = "selected">管理</option>
										<option value="8">系统管理员</option>
										<option value="9">超级管理员</option>
										</c:if>
										<c:if test="${entity.roletype==8}">
										<option value="0">职工</option>
										<option value="1">管理</option>
										<option value="8"  selected = "selected">系统管理员</option>
										<option value="9">超级管理员</option>
										</c:if>
										<c:if test="${entity.roletype==9}">
										<option value="0">职工</option>
										<option value="1">管理</option>
										<option value="8">系统管理员</option>
										<option value="9"  selected = "selected">超级管理员</option>
										</c:if>
									</select>
								</span>
							</div>
					 </div>
	           </td>
	           
	           </tr>
	           
	           <tr style="height:150px;">
	            <td></td>
	           </tr>
	           
	           
	           <tr>
	           <td colspan="2">
	           <div  align="center"  style="width:100%;">
					   <div class="form-group" align="center">
						<div class="col-sm-12">
						    <button type="submit" class="btn btn-primary">
						    <i class="ace-icon fa fa-check align-top bigger-125"></i>
						          保存
						     </button>
						     
						</div>
						</div>
				 </div>
	           
	           </td>
	           </tr>
	           
	           </table>
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
			             url: "${hosts}/role/update.do",
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
				setTimeout(function(){
					
				layer.open({
					  type: 2,
					  id:'menuedit',
					  title: null,
					  closeBtn:0,
					  offset: 'rt',
					  shadeClose: true,
					  shade: 0,
					  area: ['50%', '75%'],
					  content: '${hosts}/jump.do?jsp=/sys/role/role_tree' //iframe的url
					});
				},200);
				
				
				
				
				});
		</script>
	
	
	</body>
</html>