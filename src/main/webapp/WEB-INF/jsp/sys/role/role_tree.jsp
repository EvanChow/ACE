
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
		 <div class="widget-body">
				<div class="widget-main padding-8">
					<ul id="treeview"></ul>
				</div>
			</div>
		 
	</div>
	<jsp:include page="/ace/inend.jsp"/>

	    <!-- inline scripts related to this page -->
       <script type="text/javascript">
        $( function () {  
                  //construct the data source object to be used by tree  
                  var remoteUrl = '${hosts}/menu/remotepid.do' ;//动态树数据请求接口  
                  var remoteDateSource = function (options, callback) {  
                       var parent_id = null  
                       if ( !('text' in options || 'type' in options) ){  
                          parent_id ='00-00'; //load first level data  
                       }else if ('type' in options && options['type' ] == 'folder' ) { //it has children  
                           if ('additionalParameters' in options && 'children' in options.additionalParameters){
                        	  parent_id = options.additionalParameters['id' ]; 
                           }
                       }
                        
                       if (parent_id !== null) {  
                          $.ajax({  
                               url: remoteUrl,  
                               data: 'pid=' +parent_id,  
                               type: 'POST' ,  
                               dataType: 'json',  
                               success : function (response) {  
                                    if (response.success){
                                    		if (response.data != null) {
                                    			var time=500;
                                    			if(parent_id=='00-00'){time=200;}
                                    			setTimeout(function() {
                                    			callback({ data: response.data });
                                    			 },time); 

                                    		}
							           
                                    }
                                       
                               },  
                               error: function (response) {  
                                    
                               }  
                          })  
                      }  
                 }  
                 $('#treeview').ace_tree({
			        dataSource: remoteDateSource,
			        loadingHTML: '<div class="tree-loading"><i class="ace-icon fa fa-refresh fa-spin blue"></i></div>',
			        'open-icon': 'ace-icon fa fa-folder-open',
			        'close-icon': 'ace-icon fa fa-folder',
			        'itemSelect': true,
			        'folderSelect': true,
			        'multiSelect': true,
			        //'selectable' : true,
			        'selected-icon': 'ace-icon fa fa-check',
			        'unselected-icon': 'ace-icon fa fa-times',
			        'folder-open-icon': 'ace-icon tree-plus',
			        'folder-close-icon': 'ace-icon tree-minus'
			    });
                 
                 /** */
				//please refer to docs for more info
				$('#treeview')
				.on('loaded.fu.tree', function(e) {
					
				})
				.on('updated.fu.tree', function(e, result) {
					
				})
				.on('selected.fu.tree', function(e,data) {
					selectitem();
				})
				.on('deselected.fu.tree', function(e) {
					
				})
				.on('opened.fu.tree', function(e) {
					
				})
				.on('closed.fu.tree', function(e) {
					
				});
                 
                 
                 function selectitem() {
		            var output = "";
		            var ids = "";
		            var items = $('#treeview').tree('selectedItems');
		            for (var i in items) if (items.hasOwnProperty(i)) {
		                var item = items[i];
		                if(item.additionalParameters){
						var pid=item.additionalParameters.id;
						//console.log(pid);
						ids += pid + ",";
						}else{
							var pid=item.id;
							ids += pid + ",";
						}
		                //output += item.text + ",";
		            }
		
		            ids = ids.substring(0, ids.lastIndexOf(","));
		            //output = output.substring(0, output.lastIndexOf(","));
		            parent.$('#menuids').val(ids);
		            return ids;
		        }
                 

             }); 
             
             
          
       </script>

	</body>
</html>