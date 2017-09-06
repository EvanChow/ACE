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
        <link rel="stylesheet" href="${hosts}/ace/assets/css/fullcalendar.min.css" />
		 
		
	</head>

	<body class="no-skin" style="background-color: #FFFFFF;">
		 
		 <div class="main-content">
				<div class="main-content-inner">
					
					<div class="page-content">
						

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="row">
									<div class="col-sm-9">
										<div class="space"></div>

										<div id="calendar"></div>
									</div>

									<div class="col-sm-3">
										<div class="widget-box transparent">
											<div class="widget-header">
												<h4>Draggable events</h4>
											</div>

											<div class="widget-body">
												<div class="widget-main no-padding">
													<div id="external-events">
														<div class="external-event label-grey" data-class="label-grey">
															<i class="ace-icon fa fa-arrows"></i>
															My Event 1
														</div>

														<div class="external-event label-success" data-class="label-success">
															<i class="ace-icon fa fa-arrows"></i>
															My Event 2
														</div>

														<div class="external-event label-danger" data-class="label-danger">
															<i class="ace-icon fa fa-arrows"></i>
															My Event 3
														</div>

														<div class="external-event label-purple" data-class="label-purple">
															<i class="ace-icon fa fa-arrows"></i>
															My Event 4
														</div>

														<div class="external-event label-yellow" data-class="label-yellow">
															<i class="ace-icon fa fa-arrows"></i>
															My Event 5
														</div>

														<div class="external-event label-pink" data-class="label-pink">
															<i class="ace-icon fa fa-arrows"></i>
															My Event 6
														</div>

														<div class="external-event label-info" data-class="label-info">
															<i class="ace-icon fa fa-arrows"></i>
															My Event 7
														</div>

														<label>
															<input type="checkbox" class="ace ace-checkbox" id="drop-remove" />
															<span class="lbl"> Remove after drop</span>
														</label>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		<jsp:include page="/ace/inend.jsp"/>
		<!-- 日历 -->
		<script src="${hosts}/ace/assets/js/moment.min.js"></script>
		<script src="${hosts}/ace/assets/js/fullcalendar.min.js"></script>
	<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {

/* initialize the external events
	-----------------------------------------------------------------*/

	$('#external-events div.external-event').each(function() {

		// create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
		// it doesn't need to have a start or end
		var eventObject = {
			title: $.trim($(this).text()) // use the element's text as the event title
		};

		// store the Event Object in the DOM element so we can get to it later
		$(this).data('eventObject', eventObject);

		// make the event draggable using jQuery UI
		$(this).draggable({
			zIndex: 999,
			revert: true,      // will cause the event to go back to its
			revertDuration: 0  //  original position after the drag
		});
		
	});

	
	/* initialize the calendar
	-----------------------------------------------------------------*/

	var date = new Date();
	var d = date.getDate();
	var m = date.getMonth();
	var y = date.getFullYear();
		var formatDateTime = function (date) {
		if(date._i){
			var d1=date._i;
			var y = d1[0];  
		    var m = d1[1] + 1;  
		    m = m < 10 ? ('0' + m) : m;  
		    var d = d1[2];  
		    d = d < 10 ? ('0' + d) : d;  
		    var h = d1[3];  
		    h = h < 10 ? ('0' + h) : h; 
		    var minute =d1[4];  
		    minute = minute < 10 ? ('0' + minute) : minute; 
		    var s=d1[5];
		    s = s < 10 ? ('0' + s) : s;
		    return y + '' + m;
		}else if(date._d){
			var d2=date._d;
			var y = d2.getFullYear();  
		    var m = d2.getMonth() + 1;  
		    m = m < 10 ? '0' + m : m;
		    var d = d2.getDate();
		    d = d < 10 ? ('0' + d) : d;  
		    return y + '' + m;  
		}else{
			var date1 = new Date();
			var m1 = date1.getMonth();
			 m1 = m1 < 10 ? '0' + m1 : m1;
			var y1 = date1.getFullYear();
			return y1 + '' + m1;
		}
	};
	
	var formatDateStr = function (date) {
		if(date._i){
			var d1=date._i;
			var y = d1[0];  
		    var m = d1[1];  
		    var d = d1[2];  
		    var h = d1[3];  
		    var m =d1[4];  
		    var s=d1[5];
		    return new Date(y,m,d,h,m,s);
		}else if(date._d){
			var d2=date._d;
			var y = d2.getFullYear();
		    var m = d2.getMonth();  
		    var d = d2.getDate();
		    return new Date(y,m,d,8,0,0);
		}else{
			
			return new Date();
		}
	};
	
	

	var calendar = $('#calendar').fullCalendar({
		//isRTL: true,
		//firstDay: 1,// >> change first day of week 
		
		buttonHtml: {
			prev: '<i class="ace-icon fa fa-chevron-left"></i>',
			next: '<i class="ace-icon fa fa-chevron-right"></i>'
		},
		//lang: 'zh-cn',
		header: {
			left: 'prev,next today',
			center: 'title',
			right: ''//  month,agendaWeek,agendaDay展示月，周，日
		},
		events:function(start,end,timezone, callback){
			var year=this.getDate().format('YYYY');
			var month=this.getDate().format('M');
			var startmonth=year+""+month;
			//上月
			if(month==1){//
				var m1=12;
				var y1=year-1;
				startmonth=y1+""+m1;
			}else{
				var m1=parseInt(month)-1;
				if(m1<10){m1="0"+m1;}
				startmonth=year+""+m1;
			}
			var endmonth=year+""+month;
			if(month==12){
				var m2=1;
				var y2=year+1;
				endmonth=y2+"0"+m2;
			}else{
				var m2=parseInt(month)+1;
				if(m2<10){m2="0"+m2;}
				endmonth=year+""+m2;
			}
			var date = this.getDate().format('YYYYMM');
			$.ajax({
            url: '${hosts}/calendar/views.do',
            type:'POST',
            dataType: 'json',
            data: {month: date,startTimeStr:startmonth,endTimeStr:endmonth},
            success: function(json) { 
            	var events=json.data;
            	callback(events);
            }
            });
		}
		,
		
		/**eventResize: function(event, delta, revertFunc) {

			alert(event.title + " end is now " + event.end.format());

			if (!confirm("is this okay?")) {
				revertFunc();
			}

		},*/
		titleFormat:{
		month: 'YYYY年MMMM',                             // September 2009
		week:"YYYY年MMMMDD日", // Sep 7 – 13 2009
		day: 'YYYY年MMMMDD日'                  // Tuesday, Sep 8, 2009
		},
		//日期汉化
		monthNames:['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月'],
		monthNamesShort:['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月'],
		dayNames:['星期日','星期一', '星期二','星期三','星期四','星期五','星期六'],
		dayNamesShort:['周日','周一', '周二','周三','周四','周五','周六'],
		editable: true,
		droppable: true, // this allows things to be dropped onto the calendar !!!
		drop: function(date) { // this function is called when something is dropped
				
			//右侧事件移动到日历中
			// retrieve the dropped element's stored Event Object
			var originalEventObject = $(this).data('eventObject');
			var $extraEventClass = $(this).attr('data-class');
			// we need to copy it, so that multiple events don't have a reference to the same object
			var copiedEventObject = $.extend({}, originalEventObject);
			// assign it the date that was reported
			copiedEventObject.start = date;
			copiedEventObject.allDay = false;
			if($extraEventClass) copiedEventObject['className'] = [$extraEventClass];
			
			$.ajax({
	            url: '${hosts}/calendar/add.do',
	            type:'POST',
	            dataType: 'json',
	            data: {title:originalEventObject.title,start:formatDateStr(date),month:formatDateTime(date)},
	            success: function(res) { 
	            	if(res.success){
	            		copiedEventObject.id=res.id;
	            		// render the event on the calendar
						// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
						$('#calendar').fullCalendar('renderEvent', copiedEventObject, true);
						
						// is the "remove after drop" checkbox checked?
						if ($('#drop-remove').is(':checked')) {
							// if so, remove the element from the "Draggable Events" list
							$(this).remove();
						}
						// layer.msg('添加成功!', {icon: 1});
	            	}else{
	            		layer.msg('添加失败!', {icon: 2});
	            	}
	            }
	         });
			
		},
		selectable: true,
		selectHelper: true,
		eventDrop:function(event,dayDelta,minuteDelta,allDay,revertFunc,jsEvent,ui,view ) { 
			var d2=event.start._d;
			var y = d2.getFullYear();
		    var m = d2.getMonth();  
		    var d = d2.getDate();
		    var date=new Date(y,m,d,8,0,0);
		    $.ajax({
            url: '${hosts}/calendar/update.do',
            type:'POST',
            dataType: 'json',
            data: {start:date,id:event.id},
            success: function(res) { 
            	if(res.success){
            		
            	}else{
			    	layer.msg('移动失败!', {icon: 2});
            	}
            }
            });
		    
		    
		},
		dayClick:function(date){
			//console.log(date);
		},
		select: function(start, end, allDay) {//选中事件
			layer.prompt({title: '新建事件', formType: 2}, function(text, index){
					//新建
					$.ajax({
		            url: '${hosts}/calendar/add.do',
		            type:'POST',
		            dataType: 'json',
		            data: {title:text,start:formatDateStr(start),end:formatDateStr(end),month:formatDateTime(start)},
		            success: function(res) { 
		            	if(res.success){
		            		calendar.fullCalendar('renderEvent',
							{	id:res.id,
								title: text,
								start: formatDateStr(start),
								end: formatDateStr(end),
								allDay: allDay,
								className: 'label-danger'
							},
							true // make the event "stick"
							);
					    	layer.close(index);
					    	calendar.fullCalendar('unselect');
					    	//layer.msg('新建成功!', {icon: 1});
		            	}else{
		            		layer.msg('新建失败 !', {icon: 2});
		            	}
		            }
		            });
					
			  });
		}
		,
		eventClick: function(calEvent, jsEvent, view) {
			var title=calEvent.title;
			layer.confirm(title, {
			  btn: ['更新','删除'] //按钮
			}, function(index0){
				layer.close(index0);
				layer.prompt({title: '更新', formType: 2}, function(text, index){
					//更新
					$.ajax({
		            url: '${hosts}/calendar/update.do',
		            type:'POST',
		            dataType: 'json',
		            data: {title:text,id:calEvent._id},
		            success: function(res) { 
		            	if(res.success){
		            		calEvent.title = text;
							calendar.fullCalendar('updateEvent', calEvent);
					    	layer.close(index);
					    	//layer.msg('更新成功!', {icon: 1});
		            	}else{
					    	layer.msg('更新失败!', {icon: 2});
		            	}
		            }
		            });
					
			  });
			}, function(){
				//删除
				$.ajax({
		            url: '${hosts}/calendar/del.do',
		            type:'POST',
		            dataType: 'json',
		            data: {id:calEvent._id},
		            success: function(res) { 
		            	if(res.success){
		            		 calendar.fullCalendar('removeEvents' , function(ev){
								return (ev._id == calEvent._id);
							 });
		            		 layer.msg('删除成功!', {icon: 1});
		            	}else{
		            		layer.msg('删除失败!', {icon: 2});
		            	}
		            }
		            });
				
			});
		},
		//当鼠标悬停在一个事件上触发此操作
		eventMouseover:function( event, jsEvent, view ) {},
		//当鼠标从一个事件上移开触发此操作
		eventMouseout:function( event, jsEvent, view ) { }
		
	});


})
		</script>
	</body>
</html>
