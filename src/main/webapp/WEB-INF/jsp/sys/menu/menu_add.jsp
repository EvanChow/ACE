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
	               
	           <div class="form-group" align="center">
					<div class="col-sm-12">
					    <label class="control-label no-padding-right">菜单名称:</label>
						<span class="input-icon input-icon-right">
							<input type="text" id="form-field-icon-1" name="menuname"/>
						</span>
						
						<label class="control-label no-padding-right">上层菜单:</label>
						<span class="input-icon input-icon-right">
							<input type="text"  readonly=""  id="form-menu-pid" name="pid"/>
						</span>
					</div>
				</div>
				
				
				
				
				
				
				
				<div class="form-group" align="center">
					<div class="col-sm-12">
					    <label class="control-label no-padding-right">菜单图标:</label>
						<span class="input-icon input-icon-right">
							<input readonly="" type="text" id="form-menu-icon"  name="icon" value=""/>
							<i id="form-menu-icon-1" class="ace-icon"></i>
						</span>
						<input type="hidden" id="form-field-icon-2" name="orderid" value="0"/>
						 <label class="control-label no-padding-right">菜单地址:</label>
						<span class="input-icon input-icon-right">
							<input type="text" id="form-field-path" name="url"/>
						</span>
						
					</div>
				</div>
				
				<div class="form-group"  align="center">
					<div class="col-sm-12">

					    <label class="control-label no-padding-right">新的窗口:</label>
						<span class="input-icon input-icon-right">
							<select class="form-control" id="form-field-select-1" style="width:190px;"  name="isOpenBlank">
							<option value="0">关闭</option>
							<option value="1">打开</option>
							</select>
						</span>
					   <label class="control-label no-padding-right">默认打开:</label>
							<span class="input-icon input-icon-right">
							<select class="form-control" id="form-field-select-1" style="width:190px;"   name="isDefaultOpen">
							<option value="0">关闭</option>
							<option value="1">打开</option>
							</select>
						    </span>
					</div>
				</div>
				
				<div class="form-group" align="center">
					<div class="col-sm-12">
						<label class="control-label no-padding-right">是否菜单:</label>
						<span class="input-icon input-icon-right">
							<select class="form-control" id="form-field-ismenu" style="width:190px;"   name="ismenu">
							<option value="1">是</option>
							<option value="0">否</option>
							</select>
						</span>
						
						<label class="control-label no-padding-right">菜单类型:</label>
						<span class="input-icon input-icon-right">
							<select class="form-control" id="form-field-menutype" style="width:190px;"   name="menutype">
							<option value="1">一级</option>
							<option value="2">二级</option>
							<option value="3">三级</option>
							<option value="4">四级</option>
							</select>
						</span>
					</div>
				</div>
				
				<div class="form-group" align="left" style="margin-left:30px;">
					<div class="col-sm-12">
					   
					   <label class="control-label no-padding-right">菜单颜色:</label>
						<span class="input-icon input-icon-right">
							<select id="form-simple-colorpicker" name="img" class="hide">
								<option value="#ac725e">#ac725e</option>
								<option value="#d06b64">#d06b64</option>
								<option value="#f83a22">#f83a22</option>
								<option value="#fa573c">#fa573c</option>
								<option value="#ff7537">#ff7537</option>
								<option value="#ffad46" selected="">#ffad46</option>
								<option value="#42d692">#42d692</option>
								<option value="#16a765">#16a765</option>
								<option value="#7bd148">#7bd148</option>
								<option value="#b3dc6c">#b3dc6c</option>
								<option value="#fbe983">#fbe983</option>
								<option value="#fad165">#fad165</option>
								<option value="#92e1c0">#92e1c0</option>
								<option value="#9fe1e7">#9fe1e7</option>
								<option value="#9fc6e7">#9fc6e7</option>
								<option value="#4986e7">#4986e7</option>
								<option value="#9a9cff">#9a9cff</option>
								<option value="#b99aff">#b99aff</option>
								<option value="#c2c2c2">#c2c2c2</option>
								<option value="#cabdbf">#cabdbf</option>
								<option value="#cca6ac">#cca6ac</option>
								<option value="#f691b2">#f691b2</option>
								<option value="#cd74e6">#cd74e6</option>
								<option value="#a47ae2">#a47ae2</option>
								<option value="#555">#555</option>
							</select>
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
					//console.log(jsonData);
					 $.ajax({
			             type: "POST",
			             url: "${hosts}/menu/add.do",
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
				
				$("#form-menu-icon").click(function(){
					layer.open({
					  type: 2,
					  id:'menuadd',
					  title: null,
					  closeBtn:0,
					  offset: 'r',
					  shadeClose: true,
					  shade: 0,
					  area: ['50%', '100%'],
					  content: '${hosts}/jump.do?jsp=/util/icons'
					});
					
				});
				
				$("#form-menu-pid").click(function(){
					layer.open({
					  type: 2,
					  id:'menuadd',
					  title: null,
					  closeBtn:0,
					  offset: 'l',
					  shadeClose: true,
					  shade: 0,
					  area: ['50%', '100%'],
					  content: '${hosts}/jump.do?jsp=/sys/menu/menu_pid' //iframe的url
					});
				});
				
				$("#form-field-path").click(function(){
					layer.open({
					  type: 2,
					  id:'menuadd',
					  title: null,
					  closeBtn:0,
					  offset: 'l',
					  shadeClose: true,
					  shade: 0,
					  area: ['50%', '100%'],
					  content: '${hosts}/jump.do?jsp=/sys/menu/menu_path' //iframe的url
					});
				});
				
				$('#form-simple-colorpicker').ace_colorpicker();
				//$('#simple-colorpicker-1').ace_colorpicker('pick', 2);//select 2nd color
				//$('#simple-colorpicker-1').ace_colorpicker('pick', '#fbe983');//select #fbe983 color
				//var picker = $('#simple-colorpicker-1').data('ace_colorpicker')
				//picker.pick('red', true);//insert the color if it doesn't exist

				
			
			});
		</script>
	
	
	</body>
</html>