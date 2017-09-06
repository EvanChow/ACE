<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="hosts" value="${pageContext.request.contextPath}" />
 <script>
$(function(){
	  $.ajax({
           type: "POST",
            url: "${hosts}/menu/tree.do",
            data:{pid:'00-00'},
            dataType: "json",
            success: function(data){
              if(data.success){
           	  var tree=data.data;
           	   var html=NavList(tree);
           	   $("#nav-list-menu").append(html);
           	   $(".tabs-nav-menu").on('click',function(){
           		   var id=$(this).attr('id');
           		   var text=$(this).text();
           		   var url=$(this).attr('data');
					addTab(id,text,url);
				});
              }else{
           	   layer.msg('添加失败', {icon: 5}); 
              }
            }
        });
		function NavList(list){
		     		 var ul='';
		     		 for(var i=0;i<list.length;i++){
		     			 var obj=list[i];
		     			 if(obj.type=='folder'){
		     				 var text=obj.menu.menuname;
		     				 var icon=obj.menu.icon;
		     				 var children=obj.additionalParameters.children;
		     				 var id=obj.additionalParameters.id;
		     				 //var url=obj.menu.url;
		     				 var lis='<li class=""><a href="#" class="dropdown-toggle">' +
		     				 '<i class="menu-icon '+icon+' "></i><span class="menu-text">'+text+'</span>' +
		     				 '<b class="arrow fa fa-angle-down"></b></a><b class="arrow"></b><ul class="submenu">';
		     				 var ols=lis+NavList(children)+'</ul></li>';
		     				 ul=ul+ols;
		     			 }else{
		     				 var url=obj.menu.url;
		     				 var text=obj.text;
		     				 var id=obj.id;
		     				 var il='<li class=""><a id="'+id+'" data="'+url+'" class="tabs-nav-menu" href="#">'+text+'</a><b class="arrow"></b></li>';
		     				 ul=ul+il;
		     			 }
		     		 }
		     		 
		     		 return ul+'';
		};
		
		
		
		function addTab(id,text,url) {
			//url=url.replace('#',"");
			var options={
			 url:'${hosts}/jump.do?jsp='+url,
			 id:id,
			 title:text,
			 close:true
			};
			addTabs(options);
		}
		
});
</script>

	<ul class="nav nav-list" id="nav-list-menu">
	  
	</ul>
