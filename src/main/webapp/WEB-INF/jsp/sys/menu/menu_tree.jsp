
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="hosts" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>ACE</title>

		<meta name="description" content="overview &amp; stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
        <jsp:include page="/ace/include.jsp"/>
		<style type="text/css">
		.myClass{
		 background-color: #CCCCCC;
		}
		</style>
	</head>

	<body class="no-skin" style="background-color: #FFFFFF;">
    
    <div class="row">
					<div class="col-sm-6">
						<div class="dd" id="nestable">
						</div>
					</div>
			</div>
			
			
    		<div  class="row">
    		    <div align="center">
					<div class="col-sm-12">
					    <button id="submit" class="btn btn-primary">
					    <i class="ace-icon fa fa-check align-top bigger-125"></i>
					          保存
					     </button>
					</div>
				</div>
    		</div>
    
    
	<jsp:include page="/ace/inend.jsp"/>
	<!-- page specific plugin scripts -->
		<script src="${hosts}/ace/assets/js/jquery.nestable.min.js"></script>

	    <!-- inline scripts related to this page -->
       <script type="text/javascript">
          $(function(){
        	  $.ajax({
	             type: "POST",
		             url: "${hosts}/menu/tree.do",
		             data:{pid:'00-00'},
		             dataType: "json",
		             success: function(data){
		               if(data.success){
		            	  var tree=data.data;
		            	   //console.log(tree);
		            	   var html=treeList(tree);
		            	   //console.log(html);
		            	   $("#nestable").append(html);
		            	   
		            	   $('.dd').nestable();
		            	   $('.dd-handle a').on('mousedown', function(e){
								e.stopPropagation();
							});
							
							$('[data-rel="tooltip"]').tooltip();
							
							//当重新排序后触发
							$('.dd').on('change', function() {  
								
							    /* on change event */  
							    
							});
		            	   
		               }else{
		            	   layer.msg('添加失败', {icon: 5}); 
		               }
		             }
		         });
        	  
        	 function treeList(list){
        		 //console.log(list.length);
        		 var ol='<ol class="dd-list">';
        		 for(var i=0;i<list.length;i++){
        			 var obj=list[i];
        			 if(obj.type=='folder'){
        				 var text=obj.text;
        				 var children=obj.additionalParameters.children;
        				 var id=obj.additionalParameters.id;
        				 var lis='<li class="dd-item" data-id="'+id+'"><div class="dd-handle">'+text+'</div>';
        				 var ols=lis+treeList(children)+'</li>';
        				 //console.log(ols);
        				 ol=ol+ols;
        			 }else{
        				 var text=obj.text;
        				 var id=obj.id;
        				 var il='<li class="dd-item" data-id="'+id+'"><div class="dd-handle">'+text+'</div></li>';
        				 ol=ol+il;
        			 }
        		 }
        		 
        		 return ol+'</ol>';
        	 } 
        	  
        	  
			$("#submit").click(function(e){
				//将页面显示的树结构序列化
			    var seri=$('.dd').nestable('serialize');
			    var json=JSON.stringify(seri);
			    $.ajax({
	             type: "POST",
		             url: "${hosts}/menu/sort.do",
		             data:{jsonstr:json},
		             dataType: "json",
		             success: function(data){
		               if(data.success){
		            	  	layer.msg('成功', {icon: 6}); 
		            	  	var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
							parent.layer.close(index); //再执行关闭
		               }else{
		            	   layer.msg('失败', {icon: 5}); 
		               }
		             }
		         });
			    
			    
			    
				
			});
			
			
			
			
				
			
				
			
			
		 });
          
       </script>

	</body>
</html>