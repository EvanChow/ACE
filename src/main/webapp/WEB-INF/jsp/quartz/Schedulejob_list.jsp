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

	<body class="no-skin" style="background-color: #FFFFFF;width:98%;">
	
	
		<div class="row">
		<div class="col-xs-12">
		    
			<div class="clearfix">
			   <div class="pull-left">
					

				</div>
				
				<div class="pull-right tableTools-container"></div>
			</div>
			
			<div class="table-header">
				<div class="btn-group">
						<button type="button" class="btn btn-white btn-sm btn-primary" id="table-add" >
						<i class="ace-icon fa fa-plus bigger-120"></i>
						新增</button>
						<button type="button" class="btn btn-white btn-sm btn-primary" id="table-edit" >
						<i class="fa fa-pencil-square-o  bigger-120"></i>
						修改</button>
						<button type="button" class="btn btn-white btn-sm btn-primary" id="table-delete" >
						<i class="fa fa-trash  bigger-120"></i>
						删除</button>
						<button type="button" class="btn btn-white btn-sm btn-primary" id="table-search" >
						<i class="fa fa-search  bigger-120"></i>
						查询</button>
						<button type="button" class="btn btn-white btn-sm btn-primary" id="table-refresh" >
						<i class="fa fa-refresh  bigger-120"></i>
						刷新</button>
				</div>
			</div>

			<!-- div.table-responsive -->

			<!-- div.dataTables_borderWrap -->
			<div>
				<table id="dynamic-table" class="table table-striped table-bordered table-hover">
					
				</table>
			</div>
		</div>
	  </div>
	
	
	
	
	
	
	
	
	<jsp:include page="/ace/inend.jsp"/>
	
	    <!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
				//初始化表格
				var myTable = 
				$('#dynamic-table')
				//.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
				.DataTable( {
					aoColumns: [
					 { "title": '<label class="pos-rel"><input type="checkbox" class="ace" /><span class="lbl"></span></label>',
					    "mDataProp" : function(source,type,val){
							return '<label class="pos-rel"><input type="checkbox" class="ace" value="'+source.id+'" /><span class="lbl"></span></label>'},
					    "defaultContent": '',
					    "sType":"html",
					    "bSortable": false,
						"bVisible": true
					  } ,
					    {  "title": "任务名称",
						 "mDataProp" : "name",
						 "defaultContent": "",
						 "bSortable": false
					   },
					 
					   
					    {  "title": "任务别名",
						 "mDataProp" : "aliasName",
						 "defaultContent": "",
						 "bSortable": false
					   },
					 
					   
					    {  "title": "任务分组",
						 "mDataProp" : "jobgroup",
						 "defaultContent": "",
						 "bSortable": false
					   },
					 
					   
					    {  "title": "触发器",
						 "mDataProp" : "jobTrigger",
						 "defaultContent": "",
						 "bSortable": false
					   },
					 
					   
					    {  "title": "任务状态",
						 //"mDataProp" : "status",
						 "mDataProp":function(source,type,val){
							var status=source.status;
							if(status=='1'){
							  return '<span class="label label-success arrowed arrowed-right">启动</span>';
							}else if(status=='0'){
							  return '<span class="label label-info arrowed-in-right arrowed-in">停止</span>';
							}else{
							  return '<span class="label label-danger">未知</span>';
							}
						   },
						 "defaultContent": "",
						 "bSortable": false
					   },
					 
					   
					    {  "title": "任务表达式",
						 "mDataProp" : "cronExpression",
						 "defaultContent": "",
						 "bSortable": false
					   },
					 
					   
					    {  "title": "是否同步",
						 //"mDataProp" : "isSync",
						  "mDataProp":function(source,type,val){
							var isSync=source.isSync;
							if(isSync=='1'){
							  return '<span class="label">同步</span>';
							}else if(isSync=='0'){
							  return '<span class="label label-info">异步</span>';
							}else{
							  return '<span class="label label-danger">未知</span>';
							}
							
							
							},
						 "defaultContent": "",
						 "bSortable": false
					   },
					 
					   
					    {  "title": "任务描述",
						 "mDataProp" : "description",
						 "defaultContent": "",
						 "bSortable": false
					   },
					 
					   
					    {  "title": "要执行的任务类",
						 "mDataProp" : "classname",
						 "defaultContent": "",
						 "bSortable": false
					   },
					 
					   
					    {  "title": "要执行的任务类",
						 "mDataProp" : "classnamesync",
						 "defaultContent": "",
						 "bSortable": false
					   },
					 
					   
					     { "title": "创建时间",
						//"sType":"html",	  //string, numeric, date and html
						"mDataProp":function(source,type,val){
							if(type === 'display'){
								return FormatDate('YYYY/MM/DD hh:mm:ss',source.createtime);
							}
							return '--/--/--'},
						"defaultContent": "",
						"bSortable": false },
					 
					   
					     { "title": "修改时间",
						//"sType":"html",	  //string, numeric, date and html
						"mDataProp":function(source,type,val){
							if(type === 'display'){
								return FormatDate('YYYY/MM/DD hh:mm:ss',source.modifytime);
							}
							return '--/--/--'},
						"defaultContent": "",
						"bSortable": false },
						{ "title": "操作",
						//"sType":"html",	  //string, numeric, date and html
						"mDataProp":function(source,type,val){
							var status=source.status;
							if(status=='1'){
							  return '<button class="btn btn-minier btn-danger">停止</button>';
							}else if(status=='0'){
							  return '<button class="btn btn-minier btn-info">启动</button>';
							}else{
							  return '<button class="btn btn-minier btn-info">启动</button><button class="btn btn-minier btn-danger">停止</button>';
							}
							},
						"defaultContent": "",
						"bSortable": false }
					 
					   
					],
					bAutoWidth: false,//是否自动计算列宽
					bDeferRender:false, //是否延迟渲染，当用Ajax或者js方式加载数据时开启延迟渲染会带来很大的速度提升
					//bFilter:true,//是否对数据进行过滤,允许终端用户输入多个用空格分隔开的关键字
					//bInfo:true,//是否显示表格信息，是指当前页面上显示的数据的信息，如果有过滤操作执行，也会显示过滤操作的信息
					//bJQueryUI:false,//是否开启jQuery UI ThemeRoller支持
					//bLengthChange:false, //是否允许终端用户从一个选择列表中选择分页的页数，页数为10，25，50和100，需要分页组件bPaginate的支持
					//bPaginage:true, //是否开启分页功能
					bProcessing: false,//当表格在处理的时候（比如排序操作）是否显示“处理中...”
					bScrollInfinite:false,//是否开启不限制长度的滚动条（和sScrollY属性结合使用）
			        bServerSide: true, ///是否开启服务器端分页
			        bSort:true,//是否开启列排序,对单独列的设置在每一列的bSortable选项中指定
			        bSortClasses:true,//是否在当前被排序的列上额外添加sorting_1,sorting_2,sorting_3三个class(对大数据集进行排序时,关闭该选项)
			        bStateSave:false,//是否开启状态保存,使用cookie保存分页信息，展示长度，过滤和排序等
			        iCookieDuration: 60*60*24, // 1 day 设置用来存储会话信息的cookie的持续时间，单位是秒
			        sScrollX:"100%",//是否开启水平滚动
			        sScrollY:"100%",//是否开启垂直滚动
			        //aaSorting: [1, "desc"],
			        aLengthMenu:[5,10,25,50,100],
			        sAjaxSource: "${hosts}/schedulejob/dg.do",
			        fnServerParams:function(aoData){
			        	//console.log(aoData.push({name: "menuname", value:"ABC"}));
			        },
			        //sAjaxDataProp:{menuname:'ABC'},
			        iDisplayLength:10, //默认数据大小
			        //iDeferLoading:25, //单页显示的数据的条数
			        iDisplayStart: 0, //分页的时候，定义展示的记录的起始序号(不是页数)
					//bDestroy: true,//使用传递的新的初始化对象中的属性构造一个新的表格
					select: {
						style: 'multi'
					},
					//cookie 被修改时回调函数
					fnRowCallback:function(nRow, aData, iDisplayIndex){
						//  nRow 单行  aData单行数据  iDisplayIndex 行标
						 return nRow; 
					},
					//fnCookieCallback:function(sName,oData,sExpires,sPath){
						
					//},
					//fnServerData:function(sSource,aoData,fnCallback){
					//	return fnCallback;
					//},
					oLanguage:{
						"oAria":{
				            "sSortAscending": "升序",
				            "sSortDescending": "降序"
				        },
						 "oPaginate": {
				            "sFirst": "首页",
				            "sLast": "尾页",
				            "sNext": "下一页",
				            "sPrevious": "上一页"
				          },
				         "sEmptyTable": "无数据",//当表格中没有数据（无视因为过滤导致的没有数据）时
				         "sInfo": "从 _START_ 到 _END_ /共 _TOTAL_ 条数据",//分页展示格式化
				         "sInfoEmpty": "没有显示数据", //表格中没有数据时通常情况下格式会符合sInfo的格式
				         "sInfoFiltered": "(从 _MAX_ 条数据中检索)",//
				         "sInfoPostFix": "@By Evan",  //
				         "sInfoThousands": "‘",//格式化数字的工具,自定义分割的字符 
				         "sLengthMenu": "显示 _MENU_ 记录", //记录显示格式化
				         "sLoadingRecords": "数据加载中...", // 加载数据时显示
						 "sProcessing": "数据表正忙...", //当表格处理用户动作（例如排序或者类似行为）的时候显示的字符串
						 "sSearch": "检索  _INPUT_ ", //
						 // "sUrl": "http://www.sprymedia.co.uk/dataTables/lang.txt",
						 "sZeroRecords": "没有检索到数据"
					}
			    } );
			
				
				//表格工具栏
				$.fn.dataTable.Buttons.defaults.dom.container.className = 'dt-buttons btn-overlap btn-group btn-overlap';
				
				new $.fn.dataTable.Buttons( myTable, {
					buttons: [
					  {
						"extend": "colvis",
						"text": "<i class='fa fa-reorder bigger-110 blue'></i> <span class='hidden'>Show/hide columns</span>",
						"className": "btn btn-white btn-primary btn-bold",
						columns: ':not(:first):not(:last)'
					  },
					  {
						"extend": "copy",
						"text": "<i class='fa fa-copy bigger-110 pink'></i> <span class='hidden'>复制到剪切板</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "csv",
						"text": "<i class='fa fa-database bigger-110 orange'></i> <span class='hidden'>Export to CSV</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "excel",
						"text": "<i class='fa fa-file-excel-o bigger-110 green'></i> <span class='hidden'>Export to Excel</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "pdf",
						"text": "<i class='fa fa-file-pdf-o bigger-110 red'></i> <span class='hidden'>Export to PDF</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "print",
						"text": "<i class='fa fa-print bigger-110 grey'></i> <span class='hidden'>Print</span>",
						"className": "btn btn-white btn-primary btn-bold",
						autoPrint: false,
						message: '打印表格'
					  }		  
					]
				} );
				myTable.buttons().container().appendTo( $('.tableTools-container') );
				
				
				
				
				//style the message box
				var defaultCopyAction = myTable.button(1).action();
				myTable.button(1).action(function (e, dt, button, config) {
					defaultCopyAction(e, dt, button, config);
					$('.dt-button-info').addClass('gritter-item-wrapper gritter-info gritter-center white');
				});
				
				
				var defaultColvisAction = myTable.button(0).action();
				myTable.button(0).action(function (e, dt, button, config) {
					defaultColvisAction(e, dt, button, config);
					if($('.dt-button-collection > .dropdown-menu').length == 0) {
						$('.dt-button-collection')
						.wrapInner('<ul class="dropdown-menu dropdown-light dropdown-caret dropdown-caret" />')
						.find('a').attr('href', '#').wrap("<li />")
					}
					$('.dt-button-collection').appendTo('.tableTools-container .dt-buttons')
				});
			
				////
				
				setTimeout(function() {
					$($('.tableTools-container')).find('a.dt-button').each(function() {
						var div = $(this).find(' > div').first();
						if(div.length == 1) div.tooltip({container: 'body', title: div.parent().text()});
						else $(this).tooltip({container: 'body', title: $(this).text()});
					});
				}, 500);
				
				
				
				
				
				myTable.on( 'select', function ( e, dt, type, index ) {
					if ( type === 'row' ) {
						$( myTable.row( index ).node() ).find('input:checkbox').prop('checked', true);
					}
				} );
				myTable.on( 'deselect', function ( e, dt, type, index ) {
					if ( type === 'row' ) {
						$( myTable.row( index ).node() ).find('input:checkbox').prop('checked', false);
					}
				} );
			
			
			
			
				/////////////////////////////////
				//table checkboxes
				$('th input[type=checkbox], td input[type=checkbox]').prop('checked', false);
				
				//select/deselect all rows according to table header checkbox
				$('#dynamic-table > thead > tr > th input[type=checkbox], #dynamic-table_wrapper input[type=checkbox]').eq(0).on('click', function(){
					var th_checked = this.checked;//checkbox inside "TH" table header
					
					$('#dynamic-table').find('tbody > tr').each(function(){
						var row = this;
						if(th_checked) myTable.row(row).select();
						else  myTable.row(row).deselect();
					});
				});
				
				//select/deselect a row when the checkbox is checked/unchecked
				$('#dynamic-table').on('click', 'td input[type=checkbox]' , function(){
					var row = $(this).closest('tr').get(0);
					if(this.checked) myTable.row(row).deselect();
					else myTable.row(row).select();
				});
			
			
			
				$(document).on('click', '#dynamic-table .dropdown-toggle', function(e) {
					e.stopImmediatePropagation();
					e.stopPropagation();
					e.preventDefault();
				});
				
				
				
				
			
				
			
				/********************************/
				//add tooltip for small view action buttons in dropdown menu
				$('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				
				//tooltip placement on right or left
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('table')
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $source.offset();
					//var w2 = $source.width();
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
				
				
				
				
				/***************/
				$('.show-details-btn').on('click', function(e) {
					e.preventDefault();
					$(this).closest('tr').next().toggleClass('open');
					$(this).find(ace.vars['.icon']).toggleClass('fa-angle-double-down').toggleClass('fa-angle-double-up');
				});
				/***************/
				
				/******新增******/
				$('#table-add').on('click',function(){
					layer.open({
					  type: 2,
					  id:'menuavalon',
					  title: '新增',
					  shadeClose: true,
					  shade: 0,
					  area: ['600px', '400px'],
					  content: '${hosts}/jump.do?jsp=/quartz/Schedulejob_add' //iframe的url
					}); 
					
				});
				
				/******修改******/
				$('#table-edit').on('click',function(){
					var id="";
					var count=0;
					$('td input[type=checkbox]').each(function() {  
						var obj=$(this);
			            if (obj.is(':checked')) {
			            	count++;
			                id +=obj.val();
			            }
			        }); 
					
					
					if(count>1){
			           layer.alert('一次只能更新一条数据');
			           return ;
			        }else if(count==0){
			        	layer.alert('请选择要更新的数据');
			           return ;
			        }
					layer.open({
					  type: 2,
					  id:'menuavalon',
					  title: '修改',
					  shadeClose: true,
					  shade: 0,
					  area: ['600px', '400px'],
					  content: '${hosts}/schedulejob/updatePage.do?jsp=/quartz/Schedulejob_edit&id='+id //iframe的url
					  
					});
					
					
				});
				
				/******删除******/
				$('#table-delete').on('click',function(){
					var text="";
					var count=0;
					$('td input[type=checkbox]').each(function() {  
						var obj=$(this);
			            if (obj.is(':checked')) {
			            	count++;
			                text += ",'"+obj.val()+"'";  
			            }
			        }); 
					var ids=text.substr(1);
					
					if(count==0){
						layer.alert('请选中要删除的数据 ', {icon: 5});
						return;
					}
					
					
					layer.confirm('是否要删除这'+count+'条数据？', {
					  btn: ['是','否'] //按钮
					},function(){
					  
						$.post("${hosts}/schedulejob/del.do",{id:ids},function(result){
					    if(result.success){
					    	layer.msg('删除成功', {icon: 6}); 
					    	$('#dynamic-table').DataTable().ajax.reload( null, false);
					    }else{
					    	layer.msg('删除失败', {icon: 5}); 
					    }
					   });
						
					},function(){
					  
					});
					
					
					
				});
				
				/******查询******/
				$('#table-search').on('click',function(){
					layer.open({
					  type: 2,
					  id:'search',
					  title: '查询',
					  shadeClose: true,
					  shade: 0,
					  area: ['600px', '400px'],
					  content: '${hosts}/jump.do?jsp=/quartz/Schedulejob_search' //iframe的url
					});
	
				});
				
				/******刷新******/
				$('#table-refresh').on('click',function(){
					var index = layer.load(0, {shade:[0.5,'#fff']}); //0代表加载的风格，支持0-2
					$('#dynamic-table').DataTable().ajax.reload( null, false);
					setTimeout(function(){layer.close(index);},500);
					
				});
				
				
				
				/** 
		 * 和PHP一样的时间戳格式化函数 
		 * @param {string} format 格式 
		 * @param {int} timestamp 要格式化的时间 默认为当前时间 
		 * @return {string}   格式化的时间字符串 
		 */
		function FormatDate(format, timestamp){ 
		        var myDate=new Date(timestamp); 
				var yyyy=myDate.getFullYear();
				var MM=myDate.getMonth()+1;
				if(MM<10){MM="0"+MM;}
				var dd=myDate.getDate();
				if(dd<10){dd="0"+dd;}
				
				var hh=myDate.getHours();
				if(hh<10){hh="0"+hh;}
				var mm=myDate.getMinutes();
				if(mm<10){mm="0"+mm;}
				var ss=myDate.getSeconds();
				if(ss<10){ss="0"+ss;}
				
				var sdf=format.replace("yyyy", yyyy).replace("YYYY", yyyy).replace("MM", MM)
				.replace("DD", dd).replace("hh", hh).replace("HH", hh).replace("mm", mm).replace("ss", ss)
				
				return sdf;
		}
			
			
			})
		</script>
	
	
	
	</body>
</html>