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
       <!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="${hosts}/ace/assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="${hosts}/ace/assets/font-awesome/4.5.0/css/font-awesome.min.css" />
		
		
		<!--[if !IE]> -->
		<script src="${hosts}/ace/assets/js/jquery-2.1.4.min.js"></script>

		<!-- <![endif]-->
		
		<!--[if IE]>
		<script src="${hosts}/ace/assets/js/jquery-1.11.3.min.js"></script>
		<![endif]-->
		
		<script type="text/javascript">
		 $(function(){
			$("a").click(function(e){
				var icon=$(this).find('i').attr('class');
				parent.$("#form-menu-icon").val(icon);
				//var pcss=parent.$("#form-menu-icon-1").attr('class');
				parent.$("#form-menu-icon-1").attr('class','ace-icon '+icon);
				var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
				parent.layer.close(index); //再执行关闭
			});
		 });
		
		</script>
		
		
	</head>

	<body class="no-skin" style="background-color: #FFFFFF;width:92%;margin-left:3%;">
		 
		 
		 
		  <div id="icons">


        <section id="web-application">
          
          <div class="row fontawesome-icon-list">
              <div class="fa-hover col-xs-4"><a href="#adjust"><i class="fa fa-adjust" aria-hidden="true"></i> <span class="sr-only"></span>调整</a></div>
              <div class="fa-hover col-xs-4"><a href="#anchor"><i class="fa fa-anchor" aria-hidden="true"></i> <span class="sr-only">  </span>锚</a></div>
              <div class="fa-hover col-xs-4"><a href="#archive"><i class="fa fa-archive" aria-hidden="true"></i> <span class="sr-only">  </span>档案</a></div>

              <div class="fa-hover col-xs-4"><a href="#area-chart"><i class="fa fa-area-chart" aria-hidden="true"></i> <span class="sr-only">  </span>面积图</a></div>

              <div class="fa-hover col-xs-4"><a href="#arrows"><i class="fa fa-arrows" aria-hidden="true"></i> <span class="sr-only">  </span>箭头</a></div>

              <div class="fa-hover col-xs-4"><a href="#arrows-h"><i class="fa fa-arrows-h" aria-hidden="true"></i> <span class="sr-only">  </span>箭头</a></div>

              <div class="fa-hover col-xs-4"><a href="#arrows-v"><i class="fa fa-arrows-v" aria-hidden="true"></i> <span class="sr-only">  </span>箭头</a></div>

              <div class="fa-hover col-xs-4"><a href="#asterisk"><i class="fa fa-asterisk" aria-hidden="true"></i> <span class="sr-only">  </span>星号</a></div>

              <div class="fa-hover col-xs-4"><a href="#at"><i class="fa fa-at" aria-hidden="true"></i> <span class="sr-only">  </span>at</a></div>


              <div class="fa-hover col-xs-4"><a href="#car"><i class="fa fa-automobile" aria-hidden="true"></i> <span class="sr-only">  </span>汽车 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#balance-scale"><i class="fa fa-balance-scale" aria-hidden="true"></i> <span class="sr-only">  </span>天平</a></div>

              <div class="fa-hover col-xs-4"><a href="#ban"><i class="fa fa-ban" aria-hidden="true"></i> <span class="sr-only">  </span>禁止</a></div>

              <div class="fa-hover col-xs-4"><a href="#university"><i class="fa fa-bank" aria-hidden="true"></i> <span class="sr-only">  </span>神殿 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#bar-chart"><i class="fa fa-bar-chart" aria-hidden="true"></i> <span class="sr-only">  </span>柱形图</a></div>

              <div class="fa-hover col-xs-4"><a href="#bar-chart"><i class="fa fa-bar-chart-o" aria-hidden="true"></i> <span class="sr-only">  </span>柱形图 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#barcode"><i class="fa fa-barcode" aria-hidden="true"></i> <span class="sr-only">  </span>条形码 </a></div>

              <div class="fa-hover col-xs-4"><a href="#bars"><i class="fa fa-bars" aria-hidden="true"></i> <span class="sr-only">  </span>栅栏</a></div>

              <div class="fa-hover col-xs-4"><a href="#battery-empty"><i class="fa fa-battery-0" aria-hidden="true"></i> <span class="sr-only">  </span>电池0<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#battery-quarter"><i class="fa fa-battery-1" aria-hidden="true"></i> <span class="sr-only">  </span>电池2<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#battery-half"><i class="fa fa-battery-2" aria-hidden="true"></i> <span class="sr-only">  </span>电池5 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#battery-three-quarters"><i class="fa fa-battery-3" aria-hidden="true"></i> <span class="sr-only">  </span>电池7 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#battery-full"><i class="fa fa-battery-4" aria-hidden="true"></i> <span class="sr-only">  </span>电池10 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#battery-empty"><i class="fa fa-battery-empty" aria-hidden="true"></i> <span class="sr-only">  </span>电池0</a></div>

              <div class="fa-hover col-xs-4"><a href="#battery-full"><i class="fa fa-battery-full" aria-hidden="true"></i> <span class="sr-only">  </span>电池10</a></div>

              <div class="fa-hover col-xs-4"><a href="#battery-half"><i class="fa fa-battery-half" aria-hidden="true"></i> <span class="sr-only">  </span>电池5</a></div>

              <div class="fa-hover col-xs-4"><a href="#battery-quarter"><i class="fa fa-battery-quarter" aria-hidden="true"></i> <span class="sr-only">  </span>电池4</a></div>

              <div class="fa-hover col-xs-4"><a href="#battery-three-quarters"><i class="fa fa-battery-three-quarters" aria-hidden="true"></i> <span class="sr-only">  </span>电池7</a></div>

              <div class="fa-hover col-xs-4"><a href="#bed"><i class="fa fa-bed" aria-hidden="true"></i> <span class="sr-only">  </span>床</a></div>

              <div class="fa-hover col-xs-4"><a href="#beer"><i class="fa fa-beer" aria-hidden="true"></i> <span class="sr-only">  </span> 啤酒</a></div>

              <div class="fa-hover col-xs-4"><a href="#bell"><i class="fa fa-bell" aria-hidden="true"></i> <span class="sr-only">  </span>铃</a></div>

              <div class="fa-hover col-xs-4"><a href="#bell-o"><i class="fa fa-bell-o" aria-hidden="true"></i> <span class="sr-only">  </span>铃</a></div>

              <div class="fa-hover col-xs-4"><a href="#bell-slash"><i class="fa fa-bell-slash" aria-hidden="true"></i> <span class="sr-only">  </span>静铃</a></div>

              <div class="fa-hover col-xs-4"><a href="#bell-slash-o"><i class="fa fa-bell-slash-o" aria-hidden="true"></i> <span class="sr-only">  </span>静铃-o</a></div>

              <div class="fa-hover col-xs-4"><a href="#bicycle"><i class="fa fa-bicycle" aria-hidden="true"></i> <span class="sr-only">  </span>自行车</a></div>

              <div class="fa-hover col-xs-4"><a href="#binoculars"><i class="fa fa-binoculars" aria-hidden="true"></i> <span class="sr-only">  </span>望远镜</a></div>

              <div class="fa-hover col-xs-4"><a href="#birthday-cake"><i class="fa fa-birthday-cake" aria-hidden="true"></i> <span class="sr-only">  </span>蛋糕</a></div>

              <div class="fa-hover col-xs-4"><a href="#bluetooth"><i class="fa fa-bluetooth" aria-hidden="true"></i> <span class="sr-only">  </span>蓝牙</a></div>

              <div class="fa-hover col-xs-4"><a href="#bluetooth-b"><i class="fa fa-bluetooth-b" aria-hidden="true"></i> <span class="sr-only">  </span>蓝牙-o</a></div>

              <div class="fa-hover col-xs-4"><a href="#bolt"><i class="fa fa-bolt" aria-hidden="true"></i> <span class="sr-only">  </span>闪电</a></div>

              <div class="fa-hover col-xs-4"><a href="#bomb"><i class="fa fa-bomb" aria-hidden="true"></i> <span class="sr-only">  </span>炸弹</a></div>

              <div class="fa-hover col-xs-4"><a href="#book"><i class="fa fa-book" aria-hidden="true"></i> <span class="sr-only">  </span>书籍</a></div>

              <div class="fa-hover col-xs-4"><a href="#bookmark"><i class="fa fa-bookmark" aria-hidden="true"></i> <span class="sr-only">  </span>书签</a></div>

              <div class="fa-hover col-xs-4"><a href="#bookmark-o"><i class="fa fa-bookmark-o" aria-hidden="true"></i> <span class="sr-only">  </span>书签</a></div>

              <div class="fa-hover col-xs-4"><a href="#briefcase"><i class="fa fa-briefcase" aria-hidden="true"></i> <span class="sr-only">  </span>公文包</a></div>

              <div class="fa-hover col-xs-4"><a href="#bug"><i class="fa fa-bug" aria-hidden="true"></i> <span class="sr-only">  </span>错误</a></div>

              <div class="fa-hover col-xs-4"><a href="#building"><i class="fa fa-building" aria-hidden="true"></i> <span class="sr-only">  </span>建筑</a></div>

              <div class="fa-hover col-xs-4"><a href="#building-o"><i class="fa fa-building-o" aria-hidden="true"></i> <span class="sr-only">  </span>建筑</a></div>

              <div class="fa-hover col-xs-4"><a href="#bullhorn"><i class="fa fa-bullhorn" aria-hidden="true"></i> <span class="sr-only">  </span>扩音器</a></div>

              <div class="fa-hover col-xs-4"><a href="#bullseye"><i class="fa fa-bullseye" aria-hidden="true"></i> <span class="sr-only">  </span>模式</a></div>

              <div class="fa-hover col-xs-4"><a href="#bus"><i class="fa fa-bus" aria-hidden="true"></i> <span class="sr-only">  </span>公交车</a></div>

              <div class="fa-hover col-xs-4"><a href="#taxi"><i class="fa fa-cab" aria-hidden="true"></i> <span class="sr-only">  </span>出租车<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#calculator"><i class="fa fa-calculator" aria-hidden="true"></i> <span class="sr-only">  </span> 计算器</a></div>

              <div class="fa-hover col-xs-4"><a href="#calendar"><i class="fa fa-calendar" aria-hidden="true"></i> <span class="sr-only">  </span>日历</a></div>

              <div class="fa-hover col-xs-4"><a href="#calendar-check-o"><i class="fa fa-calendar-check-o" aria-hidden="true"></i> <span class="sr-only">  </span>日历</a></div>

              <div class="fa-hover col-xs-4"><a href="#calendar-minus-o"><i class="fa fa-calendar-minus-o" aria-hidden="true"></i> <span class="sr-only">  </span>日历</a></div>

              <div class="fa-hover col-xs-4"><a href="#calendar-o"><i class="fa fa-calendar-o" aria-hidden="true"></i> <span class="sr-only">  </span>日历-o</a></div>

              <div class="fa-hover col-xs-4"><a href="#calendar-plus-o"><i class="fa fa-calendar-plus-o" aria-hidden="true"></i> <span class="sr-only">  </span>日历</a></div>

              <div class="fa-hover col-xs-4"><a href="#calendar-times-o"><i class="fa fa-calendar-times-o" aria-hidden="true"></i> <span class="sr-only">  </span>日历</a></div>

              <div class="fa-hover col-xs-4"><a href="#camera"><i class="fa fa-camera" aria-hidden="true"></i> <span class="sr-only">  </span>照相机</a></div>

              <div class="fa-hover col-xs-4"><a href="#camera-retro"><i class="fa fa-camera-retro" aria-hidden="true"></i> <span class="sr-only">  </span>照相机</a></div>

              <div class="fa-hover col-xs-4"><a href="#car"><i class="fa fa-car" aria-hidden="true"></i> <span class="sr-only">  </span>汽车</a></div>

              <div class="fa-hover col-xs-4"><a href="#caret-square-o-down"><i class="fa fa-caret-square-o-down" aria-hidden="true"></i> <span class="sr-only">  </span>下</a></div>

              <div class="fa-hover col-xs-4"><a href="#caret-square-o-left"><i class="fa fa-caret-square-o-left" aria-hidden="true"></i> <span class="sr-only">  </span>左</a></div>

              <div class="fa-hover col-xs-4"><a href="#caret-square-o-right"><i class="fa fa-caret-square-o-right" aria-hidden="true"></i> <span class="sr-only">  </span>右</a></div>

              <div class="fa-hover col-xs-4"><a href="#caret-square-o-up"><i class="fa fa-caret-square-o-up" aria-hidden="true"></i> <span class="sr-only">  </span>上</a></div>

              <div class="fa-hover col-xs-4"><a href="#cart-arrow-down"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i> <span class="sr-only">  </span>购物车</a></div>

              <div class="fa-hover col-xs-4"><a href="#cart-plus"><i class="fa fa-cart-plus" aria-hidden="true"></i> <span class="sr-only">  </span>购物车</a></div>

              <div class="fa-hover col-xs-4"><a href="#cc"><i class="fa fa-cc" aria-hidden="true"></i> <span class="sr-only">  </span>影城</a></div>

              <div class="fa-hover col-xs-4"><a href="#certificate"><i class="fa fa-certificate" aria-hidden="true"></i> <span class="sr-only">  </span>证书</a></div>

              <div class="fa-hover col-xs-4"><a href="#check"><i class="fa fa-check" aria-hidden="true"></i> <span class="sr-only">  </span>检查</a></div>

              <div class="fa-hover col-xs-4"><a href="#check-circle"><i class="fa fa-check-circle" aria-hidden="true"></i> <span class="sr-only">  </span>检查</a></div>

              <div class="fa-hover col-xs-4"><a href="#check-circle-o"><i class="fa fa-check-circle-o" aria-hidden="true"></i> <span class="sr-only">  </span>检查</a></div>

              <div class="fa-hover col-xs-4"><a href="#check-square"><i class="fa fa-check-square" aria-hidden="true"></i> <span class="sr-only">  </span>检查</a></div>

              <div class="fa-hover col-xs-4"><a href="#check-square-o"><i class="fa fa-check-square-o" aria-hidden="true"></i> <span class="sr-only">  </span>检查</a></div>

              <div class="fa-hover col-xs-4"><a href="#child"><i class="fa fa-child" aria-hidden="true"></i> <span class="sr-only">  </span>儿童</a></div>

              <div class="fa-hover col-xs-4"><a href="#circle"><i class="fa fa-circle" aria-hidden="true"></i> <span class="sr-only">  </span>圆</a></div>

              <div class="fa-hover col-xs-4"><a href="#circle-o"><i class="fa fa-circle-o" aria-hidden="true"></i> <span class="sr-only">  </span>圆 </a></div>

              <div class="fa-hover col-xs-4"><a href="#circle-o-notch"><i class="fa fa-circle-o-notch" aria-hidden="true"></i> <span class="sr-only">  </span>圆 </a></div>

              <div class="fa-hover col-xs-4"><a href="#circle-thin"><i class="fa fa-circle-thin" aria-hidden="true"></i> <span class="sr-only">  </span>圆 </a></div>

              <div class="fa-hover col-xs-4"><a href="#clock-o"><i class="fa fa-clock-o" aria-hidden="true"></i> <span class="sr-only">  </span>时钟 </a></div>

              <div class="fa-hover col-xs-4"><a href="#clone"><i class="fa fa-clone" aria-hidden="true"></i> <span class="sr-only">  </span>复制</a></div>

              <div class="fa-hover col-xs-4"><a href="#times"><i class="fa fa-close" aria-hidden="true"></i> <span class="sr-only">  </span>关闭 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#cloud"><i class="fa fa-cloud" aria-hidden="true"></i> <span class="sr-only">  </span>云</a></div>

              <div class="fa-hover col-xs-4"><a href="#cloud-download"><i class="fa fa-cloud-download" aria-hidden="true"></i> <span class="sr-only">  </span>下载</a></div>

              <div class="fa-hover col-xs-4"><a href="#cloud-upload"><i class="fa fa-cloud-upload" aria-hidden="true"></i> <span class="sr-only">  </span>上传</a></div>

              <div class="fa-hover col-xs-4"><a href="#code"><i class="fa fa-code" aria-hidden="true"></i> <span class="sr-only">  </span>代码</a></div>

              <div class="fa-hover col-xs-4"><a href="#code-fork"><i class="fa fa-code-fork" aria-hidden="true"></i> <span class="sr-only">  </span>软件工程</a></div>

              <div class="fa-hover col-xs-4"><a href="#coffee"><i class="fa fa-coffee" aria-hidden="true"></i> <span class="sr-only">  </span>咖啡</a></div>

              <div class="fa-hover col-xs-4"><a href="#cog"><i class="fa fa-cog" aria-hidden="true"></i> <span class="sr-only">  </span>设置</a></div>

              <div class="fa-hover col-xs-4"><a href="#cogs"><i class="fa fa-cogs" aria-hidden="true"></i> <span class="sr-only">  </span>设置</a></div>

              <div class="fa-hover col-xs-4"><a href="#comment"><i class="fa fa-comment" aria-hidden="true"></i> <span class="sr-only">  </span>评论</a></div>

              <div class="fa-hover col-xs-4"><a href="#comment-o"><i class="fa fa-comment-o" aria-hidden="true"></i> <span class="sr-only">  </span>评论</a></div>

              <div class="fa-hover col-xs-4"><a href="#commenting"><i class="fa fa-commenting" aria-hidden="true"></i> <span class="sr-only">  </span>评论中</a></div>

              <div class="fa-hover col-xs-4"><a href="#commenting-o"><i class="fa fa-commenting-o" aria-hidden="true"></i> <span class="sr-only">  </span>评论</a></div>

              <div class="fa-hover col-xs-4"><a href="#comments"><i class="fa fa-comments" aria-hidden="true"></i> <span class="sr-only">  </span>新评论</a></div>

              <div class="fa-hover col-xs-4"><a href="#comments-o"><i class="fa fa-comments-o" aria-hidden="true"></i> <span class="sr-only">  </span>新评论</a></div>

              <div class="fa-hover col-xs-4"><a href="#compass"><i class="fa fa-compass" aria-hidden="true"></i> <span class="sr-only">  </span>指南针</a></div>

              <div class="fa-hover col-xs-4"><a href="#copyright"><i class="fa fa-copyright" aria-hidden="true"></i> <span class="sr-only">  </span>版权</a></div>

              <div class="fa-hover col-xs-4"><a href="#creative-commons"><i class="fa fa-creative-commons" aria-hidden="true"></i> <span class="sr-only">  </span>共享</a></div>

              <div class="fa-hover col-xs-4"><a href="#credit-card"><i class="fa fa-credit-card" aria-hidden="true"></i> <span class="sr-only">  </span>信用卡 </a></div>

              <div class="fa-hover col-xs-4"><a href="#credit-card-alt"><i class="fa fa-credit-card-alt" aria-hidden="true"></i> <span class="sr-only">  </span>信用卡</a></div>

              <div class="fa-hover col-xs-4"><a href="#crop"><i class="fa fa-crop" aria-hidden="true"></i> <span class="sr-only">  </span>裁切</a></div>

              <div class="fa-hover col-xs-4"><a href="#crosshairs"><i class="fa fa-crosshairs" aria-hidden="true"></i> <span class="sr-only">  </span>瞄准器</a></div>

              <div class="fa-hover col-xs-4"><a href="#cube"><i class="fa fa-cube" aria-hidden="true"></i> <span class="sr-only">  </span>立方体</a></div>

              <div class="fa-hover col-xs-4"><a href="#cubes"><i class="fa fa-cubes" aria-hidden="true"></i> <span class="sr-only">  </span>数据库</a></div>

              <div class="fa-hover col-xs-4"><a href="#cutlery"><i class="fa fa-cutlery" aria-hidden="true"></i> <span class="sr-only">  </span>餐具</a></div>

              <div class="fa-hover col-xs-4"><a href="#tachometer"><i class="fa fa-dashboard" aria-hidden="true"></i> <span class="sr-only">  </span>仪表盘 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#database"><i class="fa fa-database" aria-hidden="true"></i> <span class="sr-only">  </span>数据库</a></div>

              <div class="fa-hover col-xs-4"><a href="#desktop"><i class="fa fa-desktop" aria-hidden="true"></i> <span class="sr-only">  </span>桌面</a></div>

              <div class="fa-hover col-xs-4"><a href="#diamond"><i class="fa fa-diamond" aria-hidden="true"></i> <span class="sr-only">  </span> 钻石</a></div>

              <div class="fa-hover col-xs-4"><a href="#dot-circle-o"><i class="fa fa-dot-circle-o" aria-hidden="true"></i> <span class="sr-only">  </span>圆点</a></div>

              <div class="fa-hover col-xs-4"><a href="#download"><i class="fa fa-download" aria-hidden="true"></i> <span class="sr-only">  </span>下载</a></div>

              <div class="fa-hover col-xs-4"><a href="#pencil-square-o"><i class="fa fa-edit" aria-hidden="true"></i> <span class="sr-only">  </span>编辑 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#ellipsis-h"><i class="fa fa-ellipsis-h" aria-hidden="true"></i> <span class="sr-only">  </span>省略号</a></div>

              <div class="fa-hover col-xs-4"><a href="#ellipsis-v"><i class="fa fa-ellipsis-v" aria-hidden="true"></i> <span class="sr-only">  </span>省略号</a></div>

              <div class="fa-hover col-xs-4"><a href="#envelope"><i class="fa fa-envelope" aria-hidden="true"></i> <span class="sr-only">  </span>信封</a></div>

              <div class="fa-hover col-xs-4"><a href="#envelope-o"><i class="fa fa-envelope-o" aria-hidden="true"></i> <span class="sr-only">  </span>信封</a></div>

              <div class="fa-hover col-xs-4"><a href="#envelope-square"><i class="fa fa-envelope-square" aria-hidden="true"></i> <span class="sr-only">  </span>信封</a></div>

              <div class="fa-hover col-xs-4"><a href="#eraser"><i class="fa fa-eraser" aria-hidden="true"></i> <span class="sr-only">  </span>橡皮擦</a></div>

              <div class="fa-hover col-xs-4"><a href="#exchange"><i class="fa fa-exchange" aria-hidden="true"></i> <span class="sr-only">  </span>交换</a></div>

              <div class="fa-hover col-xs-4"><a href="#exclamation"><i class="fa fa-exclamation" aria-hidden="true"></i> <span class="sr-only">  </span>感叹号</a></div>

              <div class="fa-hover col-xs-4"><a href="#exclamation-circle"><i class="fa fa-exclamation-circle" aria-hidden="true"></i> <span class="sr-only">  </span>感叹号</a></div>

              <div class="fa-hover col-xs-4"><a href="#exclamation-triangle"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i> <span class="sr-only">  </span>感叹号</a></div>

              <div class="fa-hover col-xs-4"><a href="#external-link"><i class="fa fa-external-link" aria-hidden="true"></i> <span class="sr-only">  </span>外连接</a></div>

              <div class="fa-hover col-xs-4"><a href="#external-link-square"><i class="fa fa-external-link-square" aria-hidden="true"></i> <span class="sr-only">  </span>外连接</a></div>

              <div class="fa-hover col-xs-4"><a href="#eye"><i class="fa fa-eye" aria-hidden="true"></i> <span class="sr-only">  </span>眼睛</a></div>

              <div class="fa-hover col-xs-4"><a href="#eye-slash"><i class="fa fa-eye-slash" aria-hidden="true"></i> <span class="sr-only">  </span>闭眼</a></div>

              <div class="fa-hover col-xs-4"><a href="#eyedropper"><i class="fa fa-eyedropper" aria-hidden="true"></i> <span class="sr-only">  </span>滴管</a></div>

              <div class="fa-hover col-xs-4"><a href="#fax"><i class="fa fa-fax" aria-hidden="true"></i> <span class="sr-only">  </span>传真</a></div>

              <div class="fa-hover col-xs-4"><a href="#rss"><i class="fa fa-feed" aria-hidden="true"></i> <span class="sr-only">  </span>供给<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#female"><i class="fa fa-female" aria-hidden="true"></i> <span class="sr-only">  </span>女性</a></div>

              <div class="fa-hover col-xs-4"><a href="#fighter-jet"><i class="fa fa-fighter-jet" aria-hidden="true"></i> <span class="sr-only">  </span>战斗机</a></div>

              <div class="fa-hover col-xs-4"><a href="#file-archive-o"><i class="fa fa-file-archive-o" aria-hidden="true"></i> <span class="sr-only">  </span>档案库</a></div>

              <div class="fa-hover col-xs-4"><a href="#file-audio-o"><i class="fa fa-file-audio-o" aria-hidden="true"></i> <span class="sr-only">  </span>音频库</a></div>

              <div class="fa-hover col-xs-4"><a href="#file-code-o"><i class="fa fa-file-code-o" aria-hidden="true"></i> <span class="sr-only">  </span>代码库</a></div>

              <div class="fa-hover col-xs-4"><a href="#file-excel-o"><i class="fa fa-file-excel-o" aria-hidden="true"></i> <span class="sr-only">  </span>EXCEL</a></div>

              <div class="fa-hover col-xs-4"><a href="#file-image-o"><i class="fa fa-file-image-o" aria-hidden="true"></i> <span class="sr-only">  </span>图片</a></div>

              <div class="fa-hover col-xs-4"><a href="#file-video-o"><i class="fa fa-file-movie-o" aria-hidden="true"></i> <span class="sr-only">  </span>视频<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#file-pdf-o"><i class="fa fa-file-pdf-o" aria-hidden="true"></i> <span class="sr-only">  </span>PDF</a></div>

              <div class="fa-hover col-xs-4"><a href="#file-image-o"><i class="fa fa-file-photo-o" aria-hidden="true"></i> <span class="sr-only">  </span>照片<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#file-image-o"><i class="fa fa-file-picture-o" aria-hidden="true"></i> <span class="sr-only">  </span>图片<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#file-powerpoint-o"><i class="fa fa-file-powerpoint-o" aria-hidden="true"></i> <span class="sr-only">  </span>办公</a></div>

              <div class="fa-hover col-xs-4"><a href="#file-audio-o"><i class="fa fa-file-sound-o" aria-hidden="true"></i> <span class="sr-only">  </span>声音<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#file-video-o"><i class="fa fa-file-video-o" aria-hidden="true"></i> <span class="sr-only">  </span>视频</a></div>

              <div class="fa-hover col-xs-4"><a href="#file-word-o"><i class="fa fa-file-word-o" aria-hidden="true"></i> <span class="sr-only">  </span>WORD</a></div>

              <div class="fa-hover col-xs-4"><a href="#file-archive-o"><i class="fa fa-file-zip-o" aria-hidden="true"></i> <span class="sr-only">  </span>压缩<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#film"><i class="fa fa-film" aria-hidden="true"></i> <span class="sr-only">  </span>电影</a></div>

              <div class="fa-hover col-xs-4"><a href="#filter"><i class="fa fa-filter" aria-hidden="true"></i> <span class="sr-only">  </span>过滤器</a></div>

              <div class="fa-hover col-xs-4"><a href="#fire"><i class="fa fa-fire" aria-hidden="true"></i> <span class="sr-only">  </span>火焰 </a></div>

              <div class="fa-hover col-xs-4"><a href="#fire-extinguisher"><i class="fa fa-fire-extinguisher" aria-hidden="true"></i> <span class="sr-only">  </span>灭火器</a></div>

              <div class="fa-hover col-xs-4"><a href="#flag"><i class="fa fa-flag" aria-hidden="true"></i> <span class="sr-only">  </span>标志</a></div>

              <div class="fa-hover col-xs-4"><a href="#flag-checkered"><i class="fa fa-flag-checkered" aria-hidden="true"></i> <span class="sr-only">  </span>标志</a></div>

              <div class="fa-hover col-xs-4"><a href="#flag-o"><i class="fa fa-flag-o" aria-hidden="true"></i> <span class="sr-only">  </span>标志</a></div>

              <div class="fa-hover col-xs-4"><a href="#bolt"><i class="fa fa-flash" aria-hidden="true"></i> <span class="sr-only">  </span>闪电<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#flask"><i class="fa fa-flask" aria-hidden="true"></i> <span class="sr-only">  </span>烧瓶</a></div>

              <div class="fa-hover col-xs-4"><a href="#folder"><i class="fa fa-folder" aria-hidden="true"></i> <span class="sr-only">  </span>文件夹</a></div>

              <div class="fa-hover col-xs-4"><a href="#folder-o"><i class="fa fa-folder-o" aria-hidden="true"></i> <span class="sr-only">  </span>文件夹</a></div>

              <div class="fa-hover col-xs-4"><a href="#folder-open"><i class="fa fa-folder-open" aria-hidden="true"></i> <span class="sr-only">  </span>文件夹</a></div>

              <div class="fa-hover col-xs-4"><a href="#folder-open-o"><i class="fa fa-folder-open-o" aria-hidden="true"></i> <span class="sr-only">  </span>文件夹</a></div>

              <div class="fa-hover col-xs-4"><a href="#frown-o"><i class="fa fa-frown-o" aria-hidden="true"></i> <span class="sr-only">  </span>皱眉</a></div>

              <div class="fa-hover col-xs-4"><a href="#futbol-o"><i class="fa fa-futbol-o" aria-hidden="true"></i> <span class="sr-only">  </span>足球</a></div>

              <div class="fa-hover col-xs-4"><a href="#gamepad"><i class="fa fa-gamepad" aria-hidden="true"></i> <span class="sr-only">  </span>手柄</a></div>

              <div class="fa-hover col-xs-4"><a href="#gavel"><i class="fa fa-gavel" aria-hidden="true"></i> <span class="sr-only">  </span>木槌</a></div>

              <div class="fa-hover col-xs-4"><a href="#cog"><i class="fa fa-gear" aria-hidden="true"></i> <span class="sr-only">  </span>齿轮 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#cogs"><i class="fa fa-gears" aria-hidden="true"></i> <span class="sr-only">  </span>齿轮组 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#gift"><i class="fa fa-gift" aria-hidden="true"></i> <span class="sr-only">  </span>礼物</a></div>

              <div class="fa-hover col-xs-4"><a href="#glass"><i class="fa fa-glass" aria-hidden="true"></i> <span class="sr-only">  </span>玻璃品</a></div>

              <div class="fa-hover col-xs-4"><a href="#globe"><i class="fa fa-globe" aria-hidden="true"></i> <span class="sr-only">  </span>地球</a></div>

              <div class="fa-hover col-xs-4"><a href="#graduation-cap"><i class="fa fa-graduation-cap" aria-hidden="true"></i> <span class="sr-only">  </span>学士帽</a></div>

              <div class="fa-hover col-xs-4"><a href="#users"><i class="fa fa-group" aria-hidden="true"></i> <span class="sr-only">  </span>团体<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#hand-rock-o"><i class="fa fa-hand-grab-o" aria-hidden="true"></i> <span class="sr-only">  </span>拳头<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#hand-lizard-o"><i class="fa fa-hand-lizard-o" aria-hidden="true"></i> <span class="sr-only">  </span>手势1</a></div>

              <div class="fa-hover col-xs-4"><a href="#hand-paper-o"><i class="fa fa-hand-paper-o" aria-hidden="true"></i> <span class="sr-only">  </span>手势2</a></div>

              <div class="fa-hover col-xs-4"><a href="#hand-peace-o"><i class="fa fa-hand-peace-o" aria-hidden="true"></i> <span class="sr-only">  </span>手势3</a></div>

              <div class="fa-hover col-xs-4"><a href="#hand-pointer-o"><i class="fa fa-hand-pointer-o" aria-hidden="true"></i> <span class="sr-only">  </span>手势4</a></div>

              <div class="fa-hover col-xs-4"><a href="#hand-rock-o"><i class="fa fa-hand-rock-o" aria-hidden="true"></i> <span class="sr-only">  </span>手势5</a></div>

              <div class="fa-hover col-xs-4"><a href="#hand-scissors-o"><i class="fa fa-hand-scissors-o" aria-hidden="true"></i> <span class="sr-only">  </span>手势6</a></div>

              <div class="fa-hover col-xs-4"><a href="#hand-spock-o"><i class="fa fa-hand-spock-o" aria-hidden="true"></i> <span class="sr-only">  </span>手势7</a></div>

              <div class="fa-hover col-xs-4"><a href="#hand-paper-o"><i class="fa fa-hand-stop-o" aria-hidden="true"></i> <span class="sr-only">  </span>手势8<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#hashtag"><i class="fa fa-hashtag" aria-hidden="true"></i> <span class="sr-only">  </span>标签</a></div>

              <div class="fa-hover col-xs-4"><a href="#hdd-o"><i class="fa fa-hdd-o" aria-hidden="true"></i> <span class="sr-only">  </span>硬盘</a></div>

              <div class="fa-hover col-xs-4"><a href="#headphones"><i class="fa fa-headphones" aria-hidden="true"></i> <span class="sr-only">  </span>耳机</a></div>

              <div class="fa-hover col-xs-4"><a href="#heart"><i class="fa fa-heart" aria-hidden="true"></i> <span class="sr-only">  </span>心脏</a></div>

              <div class="fa-hover col-xs-4"><a href="#heart-o"><i class="fa fa-heart-o" aria-hidden="true"></i> <span class="sr-only">  </span>心脏</a></div>

              <div class="fa-hover col-xs-4"><a href="#heartbeat"><i class="fa fa-heartbeat" aria-hidden="true"></i> <span class="sr-only">  </span>心跳</a></div>

              <div class="fa-hover col-xs-4"><a href="#history"><i class="fa fa-history" aria-hidden="true"></i> <span class="sr-only">  </span>历史</a></div>

              <div class="fa-hover col-xs-4"><a href="#home"><i class="fa fa-home" aria-hidden="true"></i> <span class="sr-only">  </span>首页 </a></div>

              <div class="fa-hover col-xs-4"><a href="#bed"><i class="fa fa-hotel" aria-hidden="true"></i> <span class="sr-only">  </span>旅店<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#hourglass"><i class="fa fa-hourglass" aria-hidden="true"></i> <span class="sr-only">  </span>沙漏</a></div>

              <div class="fa-hover col-xs-4"><a href="#hourglass-start"><i class="fa fa-hourglass-1" aria-hidden="true"></i> <span class="sr-only">  </span>沙漏1 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#hourglass-half"><i class="fa fa-hourglass-2" aria-hidden="true"></i> <span class="sr-only">  </span>沙漏2 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#hourglass-end"><i class="fa fa-hourglass-3" aria-hidden="true"></i> <span class="sr-only">  </span>沙漏3 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#hourglass-end"><i class="fa fa-hourglass-end" aria-hidden="true"></i> <span class="sr-only">  </span>沙漏4</a></div>

              <div class="fa-hover col-xs-4"><a href="#hourglass-half"><i class="fa fa-hourglass-half" aria-hidden="true"></i> <span class="sr-only">  </span>沙漏5</a></div>

              <div class="fa-hover col-xs-4"><a href="#hourglass-o"><i class="fa fa-hourglass-o" aria-hidden="true"></i> <span class="sr-only">  </span>沙漏6</a></div>

              <div class="fa-hover col-xs-4"><a href="#hourglass-start"><i class="fa fa-hourglass-start" aria-hidden="true"></i> <span class="sr-only">  </span>沙漏7</a></div>

              <div class="fa-hover col-xs-4"><a href="#i-cursor"><i class="fa fa-i-cursor" aria-hidden="true"></i> <span class="sr-only">  </span>I光标</a></div>

              <div class="fa-hover col-xs-4"><a href="#picture-o"><i class="fa fa-image" aria-hidden="true"></i> <span class="sr-only">  </span>图片 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#inbox"><i class="fa fa-inbox" aria-hidden="true"></i> <span class="sr-only">  </span>收件箱</a></div>

              <div class="fa-hover col-xs-4"><a href="#industry"><i class="fa fa-industry" aria-hidden="true"></i> <span class="sr-only">  </span>工业</a></div>

              <div class="fa-hover col-xs-4"><a href="#info"><i class="fa fa-info" aria-hidden="true"></i> <span class="sr-only">  </span>信息</a></div>

              <div class="fa-hover col-xs-4"><a href="#info-circle"><i class="fa fa-info-circle" aria-hidden="true"></i> <span class="sr-only">  </span>信息</a></div>

              <div class="fa-hover col-xs-4"><a href="#university"><i class="fa fa-institution" aria-hidden="true"></i> <span class="sr-only">  </span>制度 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#key"><i class="fa fa-key" aria-hidden="true"></i> <span class="sr-only">  </span>钥匙</a></div>

              <div class="fa-hover col-xs-4"><a href="#keyboard-o"><i class="fa fa-keyboard-o" aria-hidden="true"></i> <span class="sr-only">  </span>键盘</a></div>

              <div class="fa-hover col-xs-4"><a href="#language"><i class="fa fa-language" aria-hidden="true"></i> <span class="sr-only">  </span>语言</a></div>

              <div class="fa-hover col-xs-4"><a href="#laptop"><i class="fa fa-laptop" aria-hidden="true"></i> <span class="sr-only">  </span>笔记本</a></div>

              <div class="fa-hover col-xs-4"><a href="#leaf"><i class="fa fa-leaf" aria-hidden="true"></i> <span class="sr-only">  </span>叶子</a></div>

              <div class="fa-hover col-xs-4"><a href="#gavel"><i class="fa fa-legal" aria-hidden="true"></i> <span class="sr-only">  </span>法律 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#lemon-o"><i class="fa fa-lemon-o" aria-hidden="true"></i> <span class="sr-only">  </span>柠檬</a></div>

              <div class="fa-hover col-xs-4"><a href="#level-down"><i class="fa fa-level-down" aria-hidden="true"></i> <span class="sr-only">  </span>下降</a></div>

              <div class="fa-hover col-xs-4"><a href="#level-up"><i class="fa fa-level-up" aria-hidden="true"></i> <span class="sr-only">  </span>上升</a></div>

              <div class="fa-hover col-xs-4"><a href="#life-ring"><i class="fa fa-life-bouy" aria-hidden="true"></i> <span class="sr-only">  </span>救生圈 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#life-ring"><i class="fa fa-life-buoy" aria-hidden="true"></i> <span class="sr-only">  </span>救生圈<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#life-ring"><i class="fa fa-life-ring" aria-hidden="true"></i> <span class="sr-only">  </span>救生圈</a></div>

              <div class="fa-hover col-xs-4"><a href="#life-ring"><i class="fa fa-life-saver" aria-hidden="true"></i> <span class="sr-only">  </span>救生圈<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#lightbulb-o"><i class="fa fa-lightbulb-o" aria-hidden="true"></i> <span class="sr-only">  </span>灯泡</a></div>

              <div class="fa-hover col-xs-4"><a href="#line-chart"><i class="fa fa-line-chart" aria-hidden="true"></i> <span class="sr-only">  </span>折线图</a></div>

              <div class="fa-hover col-xs-4"><a href="#location-arrow"><i class="fa fa-location-arrow" aria-hidden="true"></i> <span class="sr-only">  </span>位置</a></div>

              <div class="fa-hover col-xs-4"><a href="#lock"><i class="fa fa-lock" aria-hidden="true"></i> <span class="sr-only">  </span>锁</a></div>

              <div class="fa-hover col-xs-4"><a href="#magic"><i class="fa fa-magic" aria-hidden="true"></i> <span class="sr-only">  </span>魔术</a></div>

              <div class="fa-hover col-xs-4"><a href="#magnet"><i class="fa fa-magnet" aria-hidden="true"></i> <span class="sr-only">  </span>磁铁</a></div>

              <div class="fa-hover col-xs-4"><a href="#share"><i class="fa fa-mail-forward" aria-hidden="true"></i> <span class="sr-only">  </span>转发<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#reply"><i class="fa fa-mail-reply" aria-hidden="true"></i> <span class="sr-only">  </span>回复 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#reply-all"><i class="fa fa-mail-reply-all" aria-hidden="true"></i> <span class="sr-only">  </span>回复<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#male"><i class="fa fa-male" aria-hidden="true"></i> <span class="sr-only">  </span>男人</a></div>

              <div class="fa-hover col-xs-4"><a href="#map"><i class="fa fa-map" aria-hidden="true"></i> <span class="sr-only">  </span>地图</a></div>

              <div class="fa-hover col-xs-4"><a href="#map-marker"><i class="fa fa-map-marker" aria-hidden="true"></i> <span class="sr-only">  </span>定位</a></div>

              <div class="fa-hover col-xs-4"><a href="#map-o"><i class="fa fa-map-o" aria-hidden="true"></i> <span class="sr-only">  </span>地图</a></div>

              <div class="fa-hover col-xs-4"><a href="#map-pin"><i class="fa fa-map-pin" aria-hidden="true"></i> <span class="sr-only">  </span>图钉</a></div>

              <div class="fa-hover col-xs-4"><a href="#map-signs"><i class="fa fa-map-signs" aria-hidden="true"></i> <span class="sr-only">  </span>标志</a></div>

              <div class="fa-hover col-xs-4"><a href="#meh-o"><i class="fa fa-meh-o" aria-hidden="true"></i> <span class="sr-only">  </span>脸</a></div>

              <div class="fa-hover col-xs-4"><a href="#microphone"><i class="fa fa-microphone" aria-hidden="true"></i> <span class="sr-only">  </span>麦克风</a></div>

              <div class="fa-hover col-xs-4"><a href="#microphone-slash"><i class="fa fa-microphone-slash" aria-hidden="true"></i> <span class="sr-only">  </span>麦克风</a></div>

              <div class="fa-hover col-xs-4"><a href="#minus"><i class="fa fa-minus" aria-hidden="true"></i> <span class="sr-only">  </span>减号</a></div>

              <div class="fa-hover col-xs-4"><a href="#minus-circle"><i class="fa fa-minus-circle" aria-hidden="true"></i> <span class="sr-only">  </span>减号</a></div>

              <div class="fa-hover col-xs-4"><a href="#minus-square"><i class="fa fa-minus-square" aria-hidden="true"></i> <span class="sr-only">  </span>减号</a></div>

              <div class="fa-hover col-xs-4"><a href="#minus-square-o"><i class="fa fa-minus-square-o" aria-hidden="true"></i> <span class="sr-only">  </span>减号</a></div>

              <div class="fa-hover col-xs-4"><a href="#mobile"><i class="fa fa-mobile" aria-hidden="true"></i> <span class="sr-only">  </span>手机</a></div>

              <div class="fa-hover col-xs-4"><a href="#mobile"><i class="fa fa-mobile-phone" aria-hidden="true"></i> <span class="sr-only">  </span>手机<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#money"><i class="fa fa-money" aria-hidden="true"></i> <span class="sr-only">  </span>钱</a></div>

              <div class="fa-hover col-xs-4"><a href="#moon-o"><i class="fa fa-moon-o" aria-hidden="true"></i> <span class="sr-only">  </span>月亮</a></div>

              <div class="fa-hover col-xs-4"><a href="#graduation-cap"><i class="fa fa-mortar-board" aria-hidden="true"></i> <span class="sr-only">  </span>博士帽<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#motorcycle"><i class="fa fa-motorcycle" aria-hidden="true"></i> <span class="sr-only">  </span>摩托车</a></div>

              <div class="fa-hover col-xs-4"><a href="#mouse-pointer"><i class="fa fa-mouse-pointer" aria-hidden="true"></i> <span class="sr-only">  </span>指针</a></div>

              <div class="fa-hover col-xs-4"><a href="#music"><i class="fa fa-music" aria-hidden="true"></i> <span class="sr-only">  </span>音乐</a></div>

              <div class="fa-hover col-xs-4"><a href="#bars"><i class="fa fa-navicon" aria-hidden="true"></i> <span class="sr-only">  </span>导航<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#newspaper-o"><i class="fa fa-newspaper-o" aria-hidden="true"></i> <span class="sr-only">  </span>报纸</a></div>

              <div class="fa-hover col-xs-4"><a href="#object-group"><i class="fa fa-object-group" aria-hidden="true"></i> <span class="sr-only">  </span>对象组</a></div>

              <div class="fa-hover col-xs-4"><a href="#object-ungroup"><i class="fa fa-object-ungroup" aria-hidden="true"></i> <span class="sr-only">  </span>取消组</a></div>

              <div class="fa-hover col-xs-4"><a href="#paint-brush"><i class="fa fa-paint-brush" aria-hidden="true"></i> <span class="sr-only">  </span>画笔</a></div>

              <div class="fa-hover col-xs-4"><a href="#paper-plane"><i class="fa fa-paper-plane" aria-hidden="true"></i> <span class="sr-only">  </span>纸飞机</a></div>

              <div class="fa-hover col-xs-4"><a href="#paper-plane-o"><i class="fa fa-paper-plane-o" aria-hidden="true"></i> <span class="sr-only">  </span>纸飞机</a></div>

              <div class="fa-hover col-xs-4"><a href="#paw"><i class="fa fa-paw" aria-hidden="true"></i> <span class="sr-only">  </span>爪子</a></div>

              <div class="fa-hover col-xs-4"><a href="#pencil"><i class="fa fa-pencil" aria-hidden="true"></i> <span class="sr-only">  </span>铅笔</a></div>

              <div class="fa-hover col-xs-4"><a href="#pencil-square"><i class="fa fa-pencil-square" aria-hidden="true"></i> <span class="sr-only">  </span>铅笔</a></div>

              <div class="fa-hover col-xs-4"><a href="#pencil-square-o"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> <span class="sr-only">  </span>铅笔</a></div>

              <div class="fa-hover col-xs-4"><a href="#percent"><i class="fa fa-percent" aria-hidden="true"></i> <span class="sr-only">  </span>百分比</a></div>

              <div class="fa-hover col-xs-4"><a href="#phone"><i class="fa fa-phone" aria-hidden="true"></i> <span class="sr-only">  </span>电话</a></div>

              <div class="fa-hover col-xs-4"><a href="#phone-square"><i class="fa fa-phone-square" aria-hidden="true"></i> <span class="sr-only">  </span>电话</a></div>

              <div class="fa-hover col-xs-4"><a href="#picture-o"><i class="fa fa-photo" aria-hidden="true"></i> <span class="sr-only">  </span>照片 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#picture-o"><i class="fa fa-picture-o" aria-hidden="true"></i> <span class="sr-only">  </span>照片</a></div>

              <div class="fa-hover col-xs-4"><a href="#pie-chart"><i class="fa fa-pie-chart" aria-hidden="true"></i> <span class="sr-only">  </span>饼图</a></div>

              <div class="fa-hover col-xs-4"><a href="#plane"><i class="fa fa-plane" aria-hidden="true"></i> <span class="sr-only">  </span>飞机</a></div>

              <div class="fa-hover col-xs-4"><a href="#plug"><i class="fa fa-plug" aria-hidden="true"></i> <span class="sr-only">  </span>塞子</a></div>

              <div class="fa-hover col-xs-4"><a href="#plus"><i class="fa fa-plus" aria-hidden="true"></i> <span class="sr-only">  </span>加号</a></div>

              <div class="fa-hover col-xs-4"><a href="#plus-circle"><i class="fa fa-plus-circle" aria-hidden="true"></i> <span class="sr-only">  </span>加号</a></div>

              <div class="fa-hover col-xs-4"><a href="#plus-square"><i class="fa fa-plus-square" aria-hidden="true"></i> <span class="sr-only">  </span>加号</a></div>

              <div class="fa-hover col-xs-4"><a href="#plus-square-o"><i class="fa fa-plus-square-o" aria-hidden="true"></i> <span class="sr-only">  </span>加号</a></div>

              <div class="fa-hover col-xs-4"><a href="#power-off"><i class="fa fa-power-off" aria-hidden="true"></i> <span class="sr-only">  </span>关闭</a></div>

              <div class="fa-hover col-xs-4"><a href="#print"><i class="fa fa-print" aria-hidden="true"></i> <span class="sr-only">  </span>打印</a></div>

              <div class="fa-hover col-xs-4"><a href="#puzzle-piece"><i class="fa fa-puzzle-piece" aria-hidden="true"></i> <span class="sr-only">  </span>拼图</a></div>

              <div class="fa-hover col-xs-4"><a href="#qrcode"><i class="fa fa-qrcode" aria-hidden="true"></i> <span class="sr-only">  </span>二维码</a></div>

              <div class="fa-hover col-xs-4"><a href="#question"><i class="fa fa-question" aria-hidden="true"></i> <span class="sr-only">  </span>问题</a></div>

              <div class="fa-hover col-xs-4"><a href="#question-circle"><i class="fa fa-question-circle" aria-hidden="true"></i> <span class="sr-only">  </span>问题</a></div>

              <div class="fa-hover col-xs-4"><a href="#question-circle-o"><i class="fa fa-question-circle-o" aria-hidden="true"></i> <span class="sr-only">  </span>问题</a></div>

              <div class="fa-hover col-xs-4"><a href="#quote-left"><i class="fa fa-quote-left" aria-hidden="true"></i> <span class="sr-only">  </span>左引用</a></div>

              <div class="fa-hover col-xs-4"><a href="#quote-right"><i class="fa fa-quote-right" aria-hidden="true"></i> <span class="sr-only">  </span>右引用</a></div>

              <div class="fa-hover col-xs-4"><a href="#random"><i class="fa fa-random" aria-hidden="true"></i> <span class="sr-only">  </span>随机</a></div>

              <div class="fa-hover col-xs-4"><a href="#recycle"><i class="fa fa-recycle" aria-hidden="true"></i> <span class="sr-only">  </span>循环</a></div>

              <div class="fa-hover col-xs-4"><a href="#refresh"><i class="fa fa-refresh" aria-hidden="true"></i> <span class="sr-only">  </span>刷新</a></div>

              <div class="fa-hover col-xs-4"><a href="#registered"><i class="fa fa-registered" aria-hidden="true"></i> <span class="sr-only">  </span>注册</a></div>

              <div class="fa-hover col-xs-4"><a href="#times"><i class="fa fa-remove" aria-hidden="true"></i> <span class="sr-only">  </span>移动<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#bars"><i class="fa fa-reorder" aria-hidden="true"></i> <span class="sr-only">  </span>订购 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#reply"><i class="fa fa-reply" aria-hidden="true"></i> <span class="sr-only">  </span>回答</a></div>

              <div class="fa-hover col-xs-4"><a href="#reply-all"><i class="fa fa-reply-all" aria-hidden="true"></i> <span class="sr-only">  </span>回答</a></div>

              <div class="fa-hover col-xs-4"><a href="#retweet"><i class="fa fa-retweet" aria-hidden="true"></i> <span class="sr-only">  </span>转发</a></div>

              <div class="fa-hover col-xs-4"><a href="#road"><i class="fa fa-road" aria-hidden="true"></i> <span class="sr-only">  </span>道路</a></div>

              <div class="fa-hover col-xs-4"><a href="#rocket"><i class="fa fa-rocket" aria-hidden="true"></i> <span class="sr-only">  </span>火箭</a></div>

              <div class="fa-hover col-xs-4"><a href="#rss"><i class="fa fa-rss" aria-hidden="true"></i> <span class="sr-only">  </span>RSS</a></div>

              <div class="fa-hover col-xs-4"><a href="#rss-square"><i class="fa fa-rss-square" aria-hidden="true"></i> <span class="sr-only">  </span>RSS</a></div>

              <div class="fa-hover col-xs-4"><a href="#search"><i class="fa fa-search" aria-hidden="true"></i> <span class="sr-only">  </span>搜索</a></div>

              <div class="fa-hover col-xs-4"><a href="#search-minus"><i class="fa fa-search-minus" aria-hidden="true"></i> <span class="sr-only">  </span>搜索</a></div>

              <div class="fa-hover col-xs-4"><a href="#search-plus"><i class="fa fa-search-plus" aria-hidden="true"></i> <span class="sr-only">  </span>搜索</a></div>

              <div class="fa-hover col-xs-4"><a href="#paper-plane"><i class="fa fa-send" aria-hidden="true"></i> <span class="sr-only">  </span>发送 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#paper-plane-o"><i class="fa fa-send-o" aria-hidden="true"></i> <span class="sr-only">  </span>发送<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#server"><i class="fa fa-server" aria-hidden="true"></i> <span class="sr-only">  </span>服务器 </a></div>

              <div class="fa-hover col-xs-4"><a href="#share"><i class="fa fa-share" aria-hidden="true"></i> <span class="sr-only">  </span>分享</a></div>

              <div class="fa-hover col-xs-4"><a href="#share-alt"><i class="fa fa-share-alt" aria-hidden="true"></i> <span class="sr-only">  </span>分享1</a></div>

              <div class="fa-hover col-xs-4"><a href="#share-alt-square"><i class="fa fa-share-alt-square" aria-hidden="true"></i> <span class="sr-only">  </span>分享2</a></div>

              <div class="fa-hover col-xs-4"><a href="#share-square"><i class="fa fa-share-square" aria-hidden="true"></i> <span class="sr-only">  </span>分享3</a></div>

              <div class="fa-hover col-xs-4"><a href="#share-square-o"><i class="fa fa-share-square-o" aria-hidden="true"></i> <span class="sr-only">  </span>分享4</a></div>

              <div class="fa-hover col-xs-4"><a href="#shield"><i class="fa fa-shield" aria-hidden="true"></i> <span class="sr-only">  </span>盾</a></div>

              <div class="fa-hover col-xs-4"><a href="#ship"><i class="fa fa-ship" aria-hidden="true"></i> <span class="sr-only">  </span>轮船</a></div>

              <div class="fa-hover col-xs-4"><a href="#shopping-bag"><i class="fa fa-shopping-bag" aria-hidden="true"></i> <span class="sr-only">  </span>购物包</a></div>

              <div class="fa-hover col-xs-4"><a href="#shopping-basket"><i class="fa fa-shopping-basket" aria-hidden="true"></i> <span class="sr-only">  </span>购物篮</a></div>

              <div class="fa-hover col-xs-4"><a href="#shopping-cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i> <span class="sr-only">  </span>购物车</a></div>

              <div class="fa-hover col-xs-4"><a href="#sign-in"><i class="fa fa-sign-in" aria-hidden="true"></i> <span class="sr-only">  </span>登录</a></div>

              <div class="fa-hover col-xs-4"><a href="#sign-out"><i class="fa fa-sign-out" aria-hidden="true"></i> <span class="sr-only">  </span>登出</a></div>

              <div class="fa-hover col-xs-4"><a href="#signal"><i class="fa fa-signal" aria-hidden="true"></i> <span class="sr-only">  </span>信号</a></div>

              <div class="fa-hover col-xs-4"><a href="#sitemap"><i class="fa fa-sitemap" aria-hidden="true"></i> <span class="sr-only">  </span>网站图</a></div>

              <div class="fa-hover col-xs-4"><a href="#sliders"><i class="fa fa-sliders" aria-hidden="true"></i> <span class="sr-only">  </span>滑块</a></div>

              <div class="fa-hover col-xs-4"><a href="#smile-o"><i class="fa fa-smile-o" aria-hidden="true"></i> <span class="sr-only">  </span>笑脸</a></div>

              <div class="fa-hover col-xs-4"><a href="#futbol-o"><i class="fa fa-soccer-ball-o" aria-hidden="true"></i> <span class="sr-only">  </span>足球<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#sort"><i class="fa fa-sort" aria-hidden="true"></i> <span class="sr-only">  </span>排序</a></div>

              <div class="fa-hover col-xs-4"><a href="#sort-alpha-asc"><i class="fa fa-sort-alpha-asc" aria-hidden="true"></i> <span class="sr-only">  </span>循序</a></div>

              <div class="fa-hover col-xs-4"><a href="#sort-alpha-desc"><i class="fa fa-sort-alpha-desc" aria-hidden="true"></i> <span class="sr-only">  </span>倒叙</a></div>

              <div class="fa-hover col-xs-4"><a href="#sort-amount-asc"><i class="fa fa-sort-amount-asc" aria-hidden="true"></i> <span class="sr-only">  </span>循序</a></div>

              <div class="fa-hover col-xs-4"><a href="#sort-amount-desc"><i class="fa fa-sort-amount-desc" aria-hidden="true"></i> <span class="sr-only">  </span>倒叙</a></div>

              <div class="fa-hover col-xs-4"><a href="#sort-asc"><i class="fa fa-sort-asc" aria-hidden="true"></i> <span class="sr-only">  </span>循序</a></div>

              <div class="fa-hover col-xs-4"><a href="#sort-desc"><i class="fa fa-sort-desc" aria-hidden="true"></i> <span class="sr-only">  </span>倒叙</a></div>

              <div class="fa-hover col-xs-4"><a href="#sort-desc"><i class="fa fa-sort-down" aria-hidden="true"></i> <span class="sr-only">  </span>排序<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#sort-numeric-asc"><i class="fa fa-sort-numeric-asc" aria-hidden="true"></i> <span class="sr-only">  </span>循序</a></div>

              <div class="fa-hover col-xs-4"><a href="#sort-numeric-desc"><i class="fa fa-sort-numeric-desc" aria-hidden="true"></i> <span class="sr-only">  </span>倒叙</a></div>

              <div class="fa-hover col-xs-4"><a href="#sort-asc"><i class="fa fa-sort-up" aria-hidden="true"></i> <span class="sr-only">  </span>排序<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#space-shuttle"><i class="fa fa-space-shuttle" aria-hidden="true"></i> <span class="sr-only">  </span>飞机</a></div>

              <div class="fa-hover col-xs-4"><a href="#spinner"><i class="fa fa-spinner" aria-hidden="true"></i> <span class="sr-only">  </span>旋转</a></div>

              <div class="fa-hover col-xs-4"><a href="#spoon"><i class="fa fa-spoon" aria-hidden="true"></i> <span class="sr-only">  </span>勺子</a></div>

              <div class="fa-hover col-xs-4"><a href="#square"><i class="fa fa-square" aria-hidden="true"></i> <span class="sr-only">  </span>正方形</a></div>

              <div class="fa-hover col-xs-4"><a href="#square-o"><i class="fa fa-square-o" aria-hidden="true"></i> <span class="sr-only">  </span>正方形</a></div>

              <div class="fa-hover col-xs-4"><a href="#star"><i class="fa fa-star" aria-hidden="true"></i> <span class="sr-only">  </span>星 </a></div>

              <div class="fa-hover col-xs-4"><a href="#star-half"><i class="fa fa-star-half" aria-hidden="true"></i> <span class="sr-only">  </span>星1</a></div>

              <div class="fa-hover col-xs-4"><a href="#star-half-o"><i class="fa fa-star-half-empty" aria-hidden="true"></i> <span class="sr-only">  </span>星2<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#star-half-o"><i class="fa fa-star-half-full" aria-hidden="true"></i> <span class="sr-only">  </span>星3<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#star-half-o"><i class="fa fa-star-half-o" aria-hidden="true"></i> <span class="sr-only">  </span>星4</a></div>

              <div class="fa-hover col-xs-4"><a href="#star-o"><i class="fa fa-star-o" aria-hidden="true"></i> <span class="sr-only">  </span>星5</a></div>

              <div class="fa-hover col-xs-4"><a href="#sticky-note"><i class="fa fa-sticky-note" aria-hidden="true"></i> <span class="sr-only">  </span>便签</a></div>

              <div class="fa-hover col-xs-4"><a href="#sticky-note-o"><i class="fa fa-sticky-note-o" aria-hidden="true"></i> <span class="sr-only">  </span>便签</a></div>

              <div class="fa-hover col-xs-4"><a href="#street-view"><i class="fa fa-street-view" aria-hidden="true"></i> <span class="sr-only">  </span>街道图</a></div>

              <div class="fa-hover col-xs-4"><a href="#suitcase"><i class="fa fa-suitcase" aria-hidden="true"></i> <span class="sr-only">  </span>衣箱</a></div>

              <div class="fa-hover col-xs-4"><a href="#sun-o"><i class="fa fa-sun-o" aria-hidden="true"></i> <span class="sr-only">  </span>太阳</a></div>

              <div class="fa-hover col-xs-4"><a href="#life-ring"><i class="fa fa-support" aria-hidden="true"></i> <span class="sr-only">  </span>支持 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#tablet"><i class="fa fa-tablet" aria-hidden="true"></i> <span class="sr-only">  </span>写字板</a></div>

              <div class="fa-hover col-xs-4"><a href="#tachometer"><i class="fa fa-tachometer" aria-hidden="true"></i> <span class="sr-only">  </span>流速计</a></div>

              <div class="fa-hover col-xs-4"><a href="#tag"><i class="fa fa-tag" aria-hidden="true"></i> <span class="sr-only">  </span>标签</a></div>

              <div class="fa-hover col-xs-4"><a href="#tags"><i class="fa fa-tags" aria-hidden="true"></i> <span class="sr-only">  </span>标签组</a></div>

              <div class="fa-hover col-xs-4"><a href="#tasks"><i class="fa fa-tasks" aria-hidden="true"></i> <span class="sr-only">  </span>任务</a></div>

              <div class="fa-hover col-xs-4"><a href="#taxi"><i class="fa fa-taxi" aria-hidden="true"></i> <span class="sr-only">  </span>出租车</a></div>

              <div class="fa-hover col-xs-4"><a href="#television"><i class="fa fa-television" aria-hidden="true"></i> <span class="sr-only">  </span>电视</a></div>

              <div class="fa-hover col-xs-4"><a href="#terminal"><i class="fa fa-terminal" aria-hidden="true"></i> <span class="sr-only">  </span>终端</a></div>

              <div class="fa-hover col-xs-4"><a href="#thumb-tack"><i class="fa fa-thumb-tack" aria-hidden="true"></i> <span class="sr-only">  </span>图钉</a></div>

              <div class="fa-hover col-xs-4"><a href="#thumbs-down"><i class="fa fa-thumbs-down" aria-hidden="true"></i> <span class="sr-only">  </span>踩</a></div>

              <div class="fa-hover col-xs-4"><a href="#thumbs-o-down"><i class="fa fa-thumbs-o-down" aria-hidden="true"></i> <span class="sr-only">  </span>踩</a></div>

              <div class="fa-hover col-xs-4"><a href="#thumbs-o-up"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> <span class="sr-only">  </span>顶</a></div>

              <div class="fa-hover col-xs-4"><a href="#thumbs-up"><i class="fa fa-thumbs-up" aria-hidden="true"></i> <span class="sr-only">  </span>顶</a></div>

              <div class="fa-hover col-xs-4"><a href="#ticket"><i class="fa fa-ticket" aria-hidden="true"></i> <span class="sr-only">  </span>车票</a></div>

              <div class="fa-hover col-xs-4"><a href="#times"><i class="fa fa-times" aria-hidden="true"></i> <span class="sr-only">  </span>乘号</a></div>

              <div class="fa-hover col-xs-4"><a href="#times-circle"><i class="fa fa-times-circle" aria-hidden="true"></i> <span class="sr-only">  </span>叉号</a></div>

              <div class="fa-hover col-xs-4"><a href="#times-circle-o"><i class="fa fa-times-circle-o" aria-hidden="true"></i> <span class="sr-only">  </span>叉号</a></div>

              <div class="fa-hover col-xs-4"><a href="#tint"><i class="fa fa-tint" aria-hidden="true"></i> <span class="sr-only">  </span>色彩 </a></div>

              <div class="fa-hover col-xs-4"><a href="#caret-square-o-down"><i class="fa fa-toggle-down" aria-hidden="true"></i> <span class="sr-only">  </span>切换下<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#caret-square-o-left"><i class="fa fa-toggle-left" aria-hidden="true"></i> <span class="sr-only">  </span>切换左<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#toggle-off"><i class="fa fa-toggle-off" aria-hidden="true"></i> <span class="sr-only">  </span>切换关</a></div>

              <div class="fa-hover col-xs-4"><a href="#toggle-on"><i class="fa fa-toggle-on" aria-hidden="true"></i> <span class="sr-only">  </span>切换开</a></div>

              <div class="fa-hover col-xs-4"><a href="#caret-square-o-right"><i class="fa fa-toggle-right" aria-hidden="true"></i> <span class="sr-only">  </span>切换右<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#caret-square-o-up"><i class="fa fa-toggle-up" aria-hidden="true"></i> <span class="sr-only">  </span>切换上<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#trademark"><i class="fa fa-trademark" aria-hidden="true"></i> <span class="sr-only">  </span>商标</a></div>

              <div class="fa-hover col-xs-4"><a href="#trash"><i class="fa fa-trash" aria-hidden="true"></i> <span class="sr-only">  </span>垃圾桶</a></div>

              <div class="fa-hover col-xs-4"><a href="#trash-o"><i class="fa fa-trash-o" aria-hidden="true"></i> <span class="sr-only">  </span>垃圾桶</a></div>

              <div class="fa-hover col-xs-4"><a href="#tree"><i class="fa fa-tree" aria-hidden="true"></i> <span class="sr-only">  </span>树</a></div>

              <div class="fa-hover col-xs-4"><a href="#trophy"><i class="fa fa-trophy" aria-hidden="true"></i> <span class="sr-only">  </span>奖杯</a></div>

              <div class="fa-hover col-xs-4"><a href="#truck"><i class="fa fa-truck" aria-hidden="true"></i> <span class="sr-only">  </span>卡车</a></div>

              <div class="fa-hover col-xs-4"><a href="#tty"><i class="fa fa-tty" aria-hidden="true"></i> <span class="sr-only">  </span>打字机</a></div>

              <div class="fa-hover col-xs-4"><a href="#television"><i class="fa fa-tv" aria-hidden="true"></i> <span class="sr-only">  </span>电视 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#umbrella"><i class="fa fa-umbrella" aria-hidden="true"></i> <span class="sr-only">  </span>雨伞</a></div>


              <div class="fa-hover col-xs-4"><a href="#university"><i class="fa fa-university" aria-hidden="true"></i> <span class="sr-only">  </span>大学</a></div>

              <div class="fa-hover col-xs-4"><a href="#unlock"><i class="fa fa-unlock" aria-hidden="true"></i> <span class="sr-only">  </span>解锁</a></div>

              <div class="fa-hover col-xs-4"><a href="#unlock-alt"><i class="fa fa-unlock-alt" aria-hidden="true"></i> <span class="sr-only">  </span>解锁</a></div>

              <div class="fa-hover col-xs-4"><a href="#sort"><i class="fa fa-unsorted" aria-hidden="true"></i> <span class="sr-only">  </span>未分类<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#upload"><i class="fa fa-upload" aria-hidden="true"></i> <span class="sr-only">  </span>上传</a></div>

              <div class="fa-hover col-xs-4"><a href="#user"><i class="fa fa-user" aria-hidden="true"></i> <span class="sr-only">  </span>用户</a></div>

              <div class="fa-hover col-xs-4"><a href="#user-plus"><i class="fa fa-user-plus" aria-hidden="true"></i> <span class="sr-only">  </span>添加</a></div>

              <div class="fa-hover col-xs-4"><a href="#user-secret"><i class="fa fa-user-secret" aria-hidden="true"></i> <span class="sr-only">  </span>匿名</a></div>

              <div class="fa-hover col-xs-4"><a href="#user-times"><i class="fa fa-user-times" aria-hidden="true"></i> <span class="sr-only">  </span>删减</a></div>

              <div class="fa-hover col-xs-4"><a href="#users"><i class="fa fa-users" aria-hidden="true"></i> <span class="sr-only">  </span>用户组</a></div>

              <div class="fa-hover col-xs-4"><a href="#video-camera"><i class="fa fa-video-camera" aria-hidden="true"></i> <span class="sr-only">  </span>摄像机</a></div>

              <div class="fa-hover col-xs-4"><a href="#volume-down"><i class="fa fa-volume-down" aria-hidden="true"></i> <span class="sr-only">  </span>音量低</a></div>

              <div class="fa-hover col-xs-4"><a href="#volume-off"><i class="fa fa-volume-off" aria-hidden="true"></i> <span class="sr-only">  </span>音量关</a></div>

              <div class="fa-hover col-xs-4"><a href="#volume-up"><i class="fa fa-volume-up" aria-hidden="true"></i> <span class="sr-only">  </span>音量高</a></div>

              <div class="fa-hover col-xs-4"><a href="#exclamation-triangle"><i class="fa fa-warning" aria-hidden="true"></i> <span class="sr-only">  </span>警告 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#wheelchair"><i class="fa fa-wheelchair" aria-hidden="true"></i> <span class="sr-only">  </span>轮椅</a></div>

              <div class="fa-hover col-xs-4"><a href="#wifi"><i class="fa fa-wifi" aria-hidden="true"></i> <span class="sr-only">  </span>无线网</a></div>

              <div class="fa-hover col-xs-4"><a href="#wrench"><i class="fa fa-wrench" aria-hidden="true"></i> <span class="sr-only">  </span>扳手</a></div>
          </div>
        </section>

        <section id="hand">
          <h2 class="page-header">手势图标</h2>
          <div class="row fontawesome-icon-list">
              <div class="fa-hover col-xs-4"><a href="#hand-rock-o"><i class="fa fa-hand-grab-o" aria-hidden="true"></i> <span class="sr-only">  </span>手势1<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#hand-lizard-o"><i class="fa fa-hand-lizard-o" aria-hidden="true"></i> <span class="sr-only">  </span>手势2</a></div>

              <div class="fa-hover col-xs-4"><a href="#hand-o-down"><i class="fa fa-hand-o-down" aria-hidden="true"></i> <span class="sr-only">  </span>手势3</a></div>

              <div class="fa-hover col-xs-4"><a href="#hand-o-left"><i class="fa fa-hand-o-left" aria-hidden="true"></i> <span class="sr-only">  </span>手势4</a></div>

              <div class="fa-hover col-xs-4"><a href="#hand-o-right"><i class="fa fa-hand-o-right" aria-hidden="true"></i> <span class="sr-only">  </span>手势5</a></div>

              <div class="fa-hover col-xs-4"><a href="#hand-o-up"><i class="fa fa-hand-o-up" aria-hidden="true"></i> <span class="sr-only">  </span>手势6</a></div>

              <div class="fa-hover col-xs-4"><a href="#hand-paper-o"><i class="fa fa-hand-paper-o" aria-hidden="true"></i> <span class="sr-only">  </span>手势7</a></div>

              <div class="fa-hover col-xs-4"><a href="#hand-peace-o"><i class="fa fa-hand-peace-o" aria-hidden="true"></i> <span class="sr-only">  </span>手势8</a></div>

              <div class="fa-hover col-xs-4"><a href="#hand-pointer-o"><i class="fa fa-hand-pointer-o" aria-hidden="true"></i> <span class="sr-only">  </span>手势9</a></div>

              <div class="fa-hover col-xs-4"><a href="#hand-rock-o"><i class="fa fa-hand-rock-o" aria-hidden="true"></i> <span class="sr-only">  </span>手势10</a></div>

              <div class="fa-hover col-xs-4"><a href="#hand-scissors-o"><i class="fa fa-hand-scissors-o" aria-hidden="true"></i> <span class="sr-only">  </span>手势11</a></div>

              <div class="fa-hover col-xs-4"><a href="#hand-spock-o"><i class="fa fa-hand-spock-o" aria-hidden="true"></i> <span class="sr-only">  </span>手势12</a></div>

              <div class="fa-hover col-xs-4"><a href="#hand-paper-o"><i class="fa fa-hand-stop-o" aria-hidden="true"></i> <span class="sr-only">  </span>手势13<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#thumbs-down"><i class="fa fa-thumbs-down" aria-hidden="true"></i> <span class="sr-only">  </span>手势14</a></div>

              <div class="fa-hover col-xs-4"><a href="#thumbs-o-down"><i class="fa fa-thumbs-o-down" aria-hidden="true"></i> <span class="sr-only">  </span>手势15</a></div>

              <div class="fa-hover col-xs-4"><a href="#thumbs-o-up"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> <span class="sr-only">  </span>手势16</a></div>

              <div class="fa-hover col-xs-4"><a href="#thumbs-up"><i class="fa fa-thumbs-up" aria-hidden="true"></i> <span class="sr-only">  </span>手势17</a></div>
          </div>
        </section>

        <section id="transportation">
          <h2 class="page-header">交通图标</h2>
          <div class="row fontawesome-icon-list">
              <div class="fa-hover col-xs-4"><a href="#ambulance"><i class="fa fa-ambulance" aria-hidden="true"></i> <span class="sr-only">  </span>救护车</a></div>

              <div class="fa-hover col-xs-4"><a href="#car"><i class="fa fa-automobile" aria-hidden="true"></i> <span class="sr-only">  </span>汽车 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#bicycle"><i class="fa fa-bicycle" aria-hidden="true"></i> <span class="sr-only">  </span>自行车</a></div>

              <div class="fa-hover col-xs-4"><a href="#bus"><i class="fa fa-bus" aria-hidden="true"></i> <span class="sr-only">  </span>公交车</a></div>

              <div class="fa-hover col-xs-4"><a href="#taxi"><i class="fa fa-cab" aria-hidden="true"></i> <span class="sr-only">  </span>出租车 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#car"><i class="fa fa-car" aria-hidden="true"></i> <span class="sr-only">  </span>轿车</a></div>

              <div class="fa-hover col-xs-4"><a href="#fighter-jet"><i class="fa fa-fighter-jet" aria-hidden="true"></i> <span class="sr-only">  </span>战斗机</a></div>

              <div class="fa-hover col-xs-4"><a href="#motorcycle"><i class="fa fa-motorcycle" aria-hidden="true"></i> <span class="sr-only">  </span>摩托车</a></div>

              <div class="fa-hover col-xs-4"><a href="#plane"><i class="fa fa-plane" aria-hidden="true"></i> <span class="sr-only">  </span>飞机</a></div>

              <div class="fa-hover col-xs-4"><a href="#rocket"><i class="fa fa-rocket" aria-hidden="true"></i> <span class="sr-only">  </span>火箭</a></div>

              <div class="fa-hover col-xs-4"><a href="#ship"><i class="fa fa-ship" aria-hidden="true"></i> <span class="sr-only">  </span>轮船 </a></div>

              <div class="fa-hover col-xs-4"><a href="#space-shuttle"><i class="fa fa-space-shuttle" aria-hidden="true"></i> <span class="sr-only">  </span>飞机</a></div>

              <div class="fa-hover col-xs-4"><a href="#subway"><i class="fa fa-subway" aria-hidden="true"></i> <span class="sr-only">  </span>地铁</a></div>

              <div class="fa-hover col-xs-4"><a href="#taxi"><i class="fa fa-taxi" aria-hidden="true"></i> <span class="sr-only">  </span>出租车</a></div>

              <div class="fa-hover col-xs-4"><a href="#train"><i class="fa fa-train" aria-hidden="true"></i> <span class="sr-only">  </span>火车</a></div>

              <div class="fa-hover col-xs-4"><a href="#truck"><i class="fa fa-truck" aria-hidden="true"></i> <span class="sr-only">  </span>卡车</a></div>

              <div class="fa-hover col-xs-4"><a href="#wheelchair"><i class="fa fa-wheelchair" aria-hidden="true"></i> <span class="sr-only">  </span>轮椅</a></div>

          </div>
        </section>

        <section id="gender">
          <h2 class="page-header">性别图标</h2>
          <div class="row fontawesome-icon-list">
              <div class="fa-hover col-xs-4"><a href="#genderless"><i class="fa fa-genderless" aria-hidden="true"></i> <span class="sr-only">  </span>无性</a></div>

              <div class="fa-hover col-xs-4"><a href="#transgender"><i class="fa fa-intersex" aria-hidden="true"></i> <span class="sr-only">  </span>双性 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#mars"><i class="fa fa-mars" aria-hidden="true"></i> <span class="sr-only">  </span>男性</a></div>

              <div class="fa-hover col-xs-4"><a href="#mars-double"><i class="fa fa-mars-double" aria-hidden="true"></i> <span class="sr-only">  </span>性别1</a></div>

              <div class="fa-hover col-xs-4"><a href="#mars-stroke"><i class="fa fa-mars-stroke" aria-hidden="true"></i> <span class="sr-only">  </span>性别2</a></div>

              <div class="fa-hover col-xs-4"><a href="#mars-stroke-h"><i class="fa fa-mars-stroke-h" aria-hidden="true"></i> <span class="sr-only">  </span>性别3</a></div>

              <div class="fa-hover col-xs-4"><a href="#mars-stroke-v"><i class="fa fa-mars-stroke-v" aria-hidden="true"></i> <span class="sr-only">  </span>性别4</a></div>

              <div class="fa-hover col-xs-4"><a href="#mercury"><i class="fa fa-mercury" aria-hidden="true"></i> <span class="sr-only">  </span>水银</a></div>

              <div class="fa-hover col-xs-4"><a href="#neuter"><i class="fa fa-neuter" aria-hidden="true"></i> <span class="sr-only">  </span>性别5</a></div>

              <div class="fa-hover col-xs-4"><a href="#transgender"><i class="fa fa-transgender" aria-hidden="true"></i> <span class="sr-only">  </span>性别6</a></div>

              <div class="fa-hover col-xs-4"><a href="#transgender-alt"><i class="fa fa-transgender-alt" aria-hidden="true"></i> <span class="sr-only">  </span>性别7</a></div>

              <div class="fa-hover col-xs-4"><a href="#venus"><i class="fa fa-venus" aria-hidden="true"></i> <span class="sr-only">  </span>性别8</a></div>

              <div class="fa-hover col-xs-4"><a href="#venus-double"><i class="fa fa-venus-double" aria-hidden="true"></i> <span class="sr-only">  </span>性别9</a></div>

              <div class="fa-hover col-xs-4"><a href="#venus-mars"><i class="fa fa-venus-mars" aria-hidden="true"></i> <span class="sr-only">  </span>性别0</a></div>
          </div>
        </section>

        <section id="file-type">
          <h2 class="page-header">文件类型图标</h2>
          <div class="row fontawesome-icon-list">
              <div class="fa-hover col-xs-4"><a href="#file"><i class="fa fa-file" aria-hidden="true"></i> <span class="sr-only">  </span>文件</a></div>

              <div class="fa-hover col-xs-4"><a href="#file-archive-o"><i class="fa fa-file-archive-o" aria-hidden="true"></i> <span class="sr-only">  </span>档案</a></div>

              <div class="fa-hover col-xs-4"><a href="#file-audio-o"><i class="fa fa-file-audio-o" aria-hidden="true"></i> <span class="sr-only">  </span>音频</a></div>

              <div class="fa-hover col-xs-4"><a href="#file-code-o"><i class="fa fa-file-code-o" aria-hidden="true"></i> <span class="sr-only">  </span>代码</a></div>

              <div class="fa-hover col-xs-4"><a href="#file-excel-o"><i class="fa fa-file-excel-o" aria-hidden="true"></i> <span class="sr-only">  </span>EXCEL</a></div>

              <div class="fa-hover col-xs-4"><a href="#file-image-o"><i class="fa fa-file-image-o" aria-hidden="true"></i> <span class="sr-only">  </span>图片</a></div>

              <div class="fa-hover col-xs-4"><a href="#file-video-o"><i class="fa fa-file-movie-o" aria-hidden="true"></i> <span class="sr-only">  </span>视频<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#file-o"><i class="fa fa-file-o" aria-hidden="true"></i> <span class="sr-only">  </span>文件</a></div>

              <div class="fa-hover col-xs-4"><a href="#file-pdf-o"><i class="fa fa-file-pdf-o" aria-hidden="true"></i> <span class="sr-only">  </span>PDF</a></div>

              <div class="fa-hover col-xs-4"><a href="#file-image-o"><i class="fa fa-file-photo-o" aria-hidden="true"></i> <span class="sr-only">  </span>PHOTO<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#file-image-o"><i class="fa fa-file-picture-o" aria-hidden="true"></i> <span class="sr-only">  </span>图片<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#file-powerpoint-o"><i class="fa fa-file-powerpoint-o" aria-hidden="true"></i> <span class="sr-only">  </span>简报</a></div>

              <div class="fa-hover col-xs-4"><a href="#file-audio-o"><i class="fa fa-file-sound-o" aria-hidden="true"></i> <span class="sr-only">  </span>简报<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#file-text"><i class="fa fa-file-text" aria-hidden="true"></i> <span class="sr-only">  </span>文本</a></div>

              <div class="fa-hover col-xs-4"><a href="#file-text-o"><i class="fa fa-file-text-o" aria-hidden="true"></i> <span class="sr-only">  </span>文本</a></div>

              <div class="fa-hover col-xs-4"><a href="#file-video-o"><i class="fa fa-file-video-o" aria-hidden="true"></i> <span class="sr-only">  </span>视频</a></div>

              <div class="fa-hover col-xs-4"><a href="#file-word-o"><i class="fa fa-file-word-o" aria-hidden="true"></i> <span class="sr-only">  </span>WORD</a></div>

              <div class="fa-hover col-xs-4"><a href="#file-archive-o"><i class="fa fa-file-zip-o" aria-hidden="true"></i> <span class="sr-only">  </span>压缩<span class="text-muted"> </span></a></div>
          </div>
        </section>

        <section id="spinner">
          <h5 class="page-header">Spinner Icons</h5>
          
          <div class="row fontawesome-icon-list">
              <div class="fa-hover col-xs-4"><a href="#circle-o-notch"><i class="fa fa-circle-o-notch" aria-hidden="true"></i> <span class="sr-only">  </span>circle</a></div>

              <div class="fa-hover col-xs-4"><a href="#cog"><i class="fa fa-cog" aria-hidden="true"></i> <span class="sr-only">  </span>cog</a></div>

              <div class="fa-hover col-xs-4"><a href="#cog"><i class="fa fa-gear" aria-hidden="true"></i> <span class="sr-only">  </span>gear<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#refresh"><i class="fa fa-refresh" aria-hidden="true"></i> <span class="sr-only">  </span>刷新</a></div>

              <div class="fa-hover col-xs-4"><a href="#spinner"><i class="fa fa-spinner" aria-hidden="true"></i> <span class="sr-only">  </span>spinner</a></div>
          </div>
        </section>

        <section id="form-control">
          <h2 class="page-header">表单图标</h2>
          <div class="row fontawesome-icon-list">
              <div class="fa-hover col-xs-4"><a href="#check-square"><i class="fa fa-check-square" aria-hidden="true"></i> <span class="sr-only">  </span>check</a></div>

              <div class="fa-hover col-xs-4"><a href="#check-square-o"><i class="fa fa-check-square-o" aria-hidden="true"></i> <span class="sr-only">  </span>check</a></div>

              <div class="fa-hover col-xs-4"><a href="#circle"><i class="fa fa-circle" aria-hidden="true"></i> <span class="sr-only">  </span>circle</a></div>

              <div class="fa-hover col-xs-4"><a href="#circle-o"><i class="fa fa-circle-o" aria-hidden="true"></i> <span class="sr-only">  </span>circle</a></div>

              <div class="fa-hover col-xs-4"><a href="#dot-circle-o"><i class="fa fa-dot-circle-o" aria-hidden="true"></i> <span class="sr-only">  </span>dot</a></div>

              <div class="fa-hover col-xs-4"><a href="#minus-square"><i class="fa fa-minus-square" aria-hidden="true"></i> <span class="sr-only">  </span>减号</a></div>

              <div class="fa-hover col-xs-4"><a href="#minus-square-o"><i class="fa fa-minus-square-o" aria-hidden="true"></i> <span class="sr-only">  </span>减号</a></div>

              <div class="fa-hover col-xs-4"><a href="#plus-square"><i class="fa fa-plus-square" aria-hidden="true"></i> <span class="sr-only">  </span>加号</a></div>

              <div class="fa-hover col-xs-4"><a href="#plus-square-o"><i class="fa fa-plus-square-o" aria-hidden="true"></i> <span class="sr-only">  </span>加号</a></div>

              <div class="fa-hover col-xs-4"><a href="#square"><i class="fa fa-square" aria-hidden="true"></i> <span class="sr-only">  </span>正方形 </a></div>

              <div class="fa-hover col-xs-4"><a href="#square-o"><i class="fa fa-square-o" aria-hidden="true"></i> <span class="sr-only">  </span>正方形 </a></div>
          </div>
        </section>

        <section id="payment">
          <h2 >支付图标</h2>
          <div class="row fontawesome-icon-list">
              <div class="fa-hover col-xs-4"><a href="#cc-amex"><i class="fa fa-cc-amex" aria-hidden="true"></i> <span class="sr-only">  </span>amex</a></div>

              <div class="fa-hover col-xs-4"><a href="#cc-diners-club"><i class="fa fa-cc-diners-club" aria-hidden="true"></i> <span class="sr-only">  </span>diner</a></div>

              <div class="fa-hover col-xs-4"><a href="#cc-discover"><i class="fa fa-cc-discover" aria-hidden="true"></i> <span class="sr-only">  </span>cover</a></div>

              <div class="fa-hover col-xs-4"><a href="#cc-jcb"><i class="fa fa-cc-jcb" aria-hidden="true"></i> <span class="sr-only">  </span>jcb</a></div>

              <div class="fa-hover col-xs-4"><a href="#cc-mastercard"><i class="fa fa-cc-mastercard" aria-hidden="true"></i> <span class="sr-only">  </span>master</a></div>

              <div class="fa-hover col-xs-4"><a href="#cc-paypal"><i class="fa fa-cc-paypal" aria-hidden="true"></i> <span class="sr-only">  </span>paypal</a></div>

              <div class="fa-hover col-xs-4"><a href="#cc-stripe"><i class="fa fa-cc-stripe" aria-hidden="true"></i> <span class="sr-only">  </span>stripe</a></div>

              <div class="fa-hover col-xs-4"><a href="#cc-visa"><i class="fa fa-cc-visa" aria-hidden="true"></i> <span class="sr-only">  </span>visa</a></div>

              <div class="fa-hover col-xs-4"><a href="#credit-card"><i class="fa fa-credit-card" aria-hidden="true"></i> <span class="sr-only">  </span>card</a></div>

              <div class="fa-hover col-xs-4"><a href="#credit-card-alt"><i class="fa fa-credit-card-alt" aria-hidden="true"></i> <span class="sr-only">  </span>card</a></div>

              <div class="fa-hover col-xs-4"><a href="#google-wallet"><i class="fa fa-google-wallet" aria-hidden="true"></i> <span class="sr-only">  </span>wallet</a></div>

              <div class="fa-hover col-xs-4"><a href="#paypal"><i class="fa fa-paypal" aria-hidden="true"></i> <span class="sr-only">  </span>paypal</a></div>
          </div>
        </section>

        <section id="chart">
          <h2 class="page-header">图表</h2>
          <div class="row fontawesome-icon-list">
              <div class="fa-hover col-xs-4"><a href="#area-chart"><i class="fa fa-area-chart" aria-hidden="true"></i> <span class="sr-only">  </span>面积图</a></div>

              <div class="fa-hover col-xs-4"><a href="#bar-chart"><i class="fa fa-bar-chart" aria-hidden="true"></i> <span class="sr-only">  </span>柱状图</a></div>

              <div class="fa-hover col-xs-4"><a href="#bar-chart"><i class="fa fa-bar-chart-o" aria-hidden="true"></i> <span class="sr-only">  </span>柱状图<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#line-chart"><i class="fa fa-line-chart" aria-hidden="true"></i> <span class="sr-only">  </span>折线图</a></div>

              <div class="fa-hover col-xs-4"><a href="#pie-chart"><i class="fa fa-pie-chart" aria-hidden="true"></i> <span class="sr-only">  </span>饼图</a></div>
          </div>
        </section>

        <section id="currency">
          <h2 class="page-header">货币图标</h2>
          <div class="row fontawesome-icon-list">
              <div class="fa-hover col-xs-4"><a href="#btc"><i class="fa fa-bitcoin" aria-hidden="true"></i> <span class="sr-only">  </span>比特币 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#btc"><i class="fa fa-btc" aria-hidden="true"></i> <span class="sr-only">  </span>BTC</a></div>

              <div class="fa-hover col-xs-4"><a href="#jpy"><i class="fa fa-cny" aria-hidden="true"></i> <span class="sr-only">  </span> 人民币 </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#usd"><i class="fa fa-dollar" aria-hidden="true"></i> <span class="sr-only">  </span>美元 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#eur"><i class="fa fa-eur" aria-hidden="true"></i> <span class="sr-only">  </span>欧元</a></div>

              <div class="fa-hover col-xs-4"><a href="#eur"><i class="fa fa-euro" aria-hidden="true"></i> <span class="sr-only">  </span>欧元 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#gbp"><i class="fa fa-gbp" aria-hidden="true"></i> <span class="sr-only">  </span>英磅</a></div>

              <div class="fa-hover col-xs-4"><a href="#gg"><i class="fa fa-gg" aria-hidden="true"></i> <span class="sr-only">  </span>GG</a></div>

              <div class="fa-hover col-xs-4"><a href="#gg-circle"><i class="fa fa-gg-circle" aria-hidden="true"></i> <span class="sr-only">  </span>GG</a></div>

              <div class="fa-hover col-xs-4"><a href="#ils"><i class="fa fa-ils" aria-hidden="true"></i> <span class="sr-only">  </span>ils</a></div>

              <div class="fa-hover col-xs-4"><a href="#inr"><i class="fa fa-inr" aria-hidden="true"></i> <span class="sr-only">  </span>卢比</a></div>

              <div class="fa-hover col-xs-4"><a href="#jpy"><i class="fa fa-jpy" aria-hidden="true"></i> <span class="sr-only">  </span>日元 </a></div>

              <div class="fa-hover col-xs-4"><a href="#krw"><i class="fa fa-krw" aria-hidden="true"></i> <span class="sr-only">  </span>韩元</a></div>

              <div class="fa-hover col-xs-4"><a href="#money"><i class="fa fa-money" aria-hidden="true"></i> <span class="sr-only">  </span>金钱</a></div>

              <div class="fa-hover col-xs-4"><a href="#jpy"><i class="fa fa-rmb" aria-hidden="true"></i> <span class="sr-only">  </span>人民币 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#rub"><i class="fa fa-rouble" aria-hidden="true"></i> <span class="sr-only">  </span>卢布 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#rub"><i class="fa fa-rub" aria-hidden="true"></i> <span class="sr-only">  </span>卢布</a></div>

              <div class="fa-hover col-xs-4"><a href="#rub"><i class="fa fa-ruble" aria-hidden="true"></i> <span class="sr-only">  </span>卢布 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#inr"><i class="fa fa-rupee" aria-hidden="true"></i> <span class="sr-only">  </span>卢比 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#ils"><i class="fa fa-shekel" aria-hidden="true"></i> <span class="sr-only">  </span>谢克尔 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#ils"><i class="fa fa-sheqel" aria-hidden="true"></i> <span class="sr-only">  </span>舍克尔  <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#try"><i class="fa fa-try" aria-hidden="true"></i> <span class="sr-only">  </span>土耳其</a></div>

              <div class="fa-hover col-xs-4"><a href="#try"><i class="fa fa-turkish-lira" aria-hidden="true"></i> <span class="sr-only">  </span>土耳其<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#usd"><i class="fa fa-usd" aria-hidden="true"></i> <span class="sr-only">  </span>美元</a></div>

              <div class="fa-hover col-xs-4"><a href="#krw"><i class="fa fa-won" aria-hidden="true"></i> <span class="sr-only">  </span>won <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#jpy"><i class="fa fa-yen" aria-hidden="true"></i> <span class="sr-only">  </span>日元 <span class="text-muted"> </span></a></div>
          </div>
        </section>

        <section id="text-editor">
          <h2 class="page-header">文本编辑</h2>
          <div class="row fontawesome-icon-list">
              <div class="fa-hover col-xs-4"><a href="#align-center"><i class="fa fa-align-center" aria-hidden="true"></i> <span class="sr-only">  </span>居中</a></div>

              <div class="fa-hover col-xs-4"><a href="#align-justify"><i class="fa fa-align-justify" aria-hidden="true"></i> <span class="sr-only">  </span>对齐</a></div>

              <div class="fa-hover col-xs-4"><a href="#align-left"><i class="fa fa-align-left" aria-hidden="true"></i> <span class="sr-only">  </span>左对齐</a></div>

              <div class="fa-hover col-xs-4"><a href="#align-right"><i class="fa fa-align-right" aria-hidden="true"></i> <span class="sr-only">  </span>又对齐</a></div>

              <div class="fa-hover col-xs-4"><a href="#bold"><i class="fa fa-bold" aria-hidden="true"></i> <span class="sr-only">  </span>加粗</a></div>

              <div class="fa-hover col-xs-4"><a href="#link"><i class="fa fa-chain" aria-hidden="true"></i> <span class="sr-only">  </span> 链接 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#chain-broken"><i class="fa fa-chain-broken" aria-hidden="true"></i> <span class="sr-only">  </span>断链</a></div>

              <div class="fa-hover col-xs-4"><a href="#clipboard"><i class="fa fa-clipboard" aria-hidden="true"></i> <span class="sr-only">  </span>剪切板 </a></div>

              <div class="fa-hover col-xs-4"><a href="#columns"><i class="fa fa-columns" aria-hidden="true"></i> <span class="sr-only">  </span>列</a></div>

              <div class="fa-hover col-xs-4"><a href="#files-o"><i class="fa fa-copy" aria-hidden="true"></i> <span class="sr-only">  </span>复制  <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#scissors"><i class="fa fa-cut" aria-hidden="true"></i> <span class="sr-only">  </span>剪切 <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#outdent"><i class="fa fa-dedent" aria-hidden="true"></i> <span class="sr-only">  </span>伸出<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#eraser"><i class="fa fa-eraser" aria-hidden="true"></i> <span class="sr-only">  </span>橡皮擦</a></div>

              <div class="fa-hover col-xs-4"><a href="#file"><i class="fa fa-file" aria-hidden="true"></i> <span class="sr-only">  </span>文件</a></div>

              <div class="fa-hover col-xs-4"><a href="#file-o"><i class="fa fa-file-o" aria-hidden="true"></i> <span class="sr-only">  </span>文件</a></div>

              <div class="fa-hover col-xs-4"><a href="#file-text"><i class="fa fa-file-text" aria-hidden="true"></i> <span class="sr-only">  </span>文本</a></div>

              <div class="fa-hover col-xs-4"><a href="#file-text-o"><i class="fa fa-file-text-o" aria-hidden="true"></i> <span class="sr-only">  </span>文本</a></div>

              <div class="fa-hover col-xs-4"><a href="#files-o"><i class="fa fa-files-o" aria-hidden="true"></i> <span class="sr-only">  </span>文件</a></div>

              <div class="fa-hover col-xs-4"><a href="#floppy-o"><i class="fa fa-floppy-o" aria-hidden="true"></i> <span class="sr-only">  </span>软驱</a></div>

              <div class="fa-hover col-xs-4"><a href="#font"><i class="fa fa-font" aria-hidden="true"></i> <span class="sr-only">  </span>字体</a></div>

              <div class="fa-hover col-xs-4"><a href="#header"><i class="fa fa-header" aria-hidden="true"></i> <span class="sr-only">  </span>头球</a></div>

              <div class="fa-hover col-xs-4"><a href="#indent"><i class="fa fa-indent" aria-hidden="true"></i> <span class="sr-only">  </span>缩进</a></div>

              <div class="fa-hover col-xs-4"><a href="#italic"><i class="fa fa-italic" aria-hidden="true"></i> <span class="sr-only">  </span>斜体</a></div>

              <div class="fa-hover col-xs-4"><a href="#link"><i class="fa fa-link" aria-hidden="true"></i> <span class="sr-only">  </span>链接</a></div>

              <div class="fa-hover col-xs-4"><a href="#list"><i class="fa fa-list" aria-hidden="true"></i> <span class="sr-only">  </span>列表</a></div>

              <div class="fa-hover col-xs-4"><a href="#list-alt"><i class="fa fa-list-alt" aria-hidden="true"></i> <span class="sr-only">  </span>列表</a></div>

              <div class="fa-hover col-xs-4"><a href="#list-ol"><i class="fa fa-list-ol" aria-hidden="true"></i> <span class="sr-only">  </span>列表1</a></div>

              <div class="fa-hover col-xs-4"><a href="#list-ul"><i class="fa fa-list-ul" aria-hidden="true"></i> <span class="sr-only">  </span>列表2</a></div>

              <div class="fa-hover col-xs-4"><a href="#outdent"><i class="fa fa-outdent" aria-hidden="true"></i> <span class="sr-only">  </span>缩进</a></div>

              <div class="fa-hover col-xs-4"><a href="#paperclip"><i class="fa fa-paperclip" aria-hidden="true"></i> <span class="sr-only">  </span>曲别针</a></div>

              <div class="fa-hover col-xs-4"><a href="#paragraph"><i class="fa fa-paragraph" aria-hidden="true"></i> <span class="sr-only">  </span>段落</a></div>

              <div class="fa-hover col-xs-4"><a href="#clipboard"><i class="fa fa-paste" aria-hidden="true"></i> <span class="sr-only">  </span>粘贴<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#repeat"><i class="fa fa-repeat" aria-hidden="true"></i> <span class="sr-only">  </span>重复</a></div>

              <div class="fa-hover col-xs-4"><a href="#undo"><i class="fa fa-rotate-left" aria-hidden="true"></i> <span class="sr-only">  </span>左旋转<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#repeat"><i class="fa fa-rotate-right" aria-hidden="true"></i> <span class="sr-only">  </span>右旋转<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#floppy-o"><i class="fa fa-save" aria-hidden="true"></i> <span class="sr-only">  </span>保存<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#scissors"><i class="fa fa-scissors" aria-hidden="true"></i> <span class="sr-only">  </span>剪刀</a></div>

              <div class="fa-hover col-xs-4"><a href="#strikethrough"><i class="fa fa-strikethrough" aria-hidden="true"></i> <span class="sr-only">  </span>删除线</a></div>

              <div class="fa-hover col-xs-4"><a href="#subscript"><i class="fa fa-subscript" aria-hidden="true"></i> <span class="sr-only">  </span>下标</a></div>

              <div class="fa-hover col-xs-4"><a href="#superscript"><i class="fa fa-superscript" aria-hidden="true"></i> <span class="sr-only">  </span>上标</a></div>

              <div class="fa-hover col-xs-4"><a href="#table"><i class="fa fa-table" aria-hidden="true"></i> <span class="sr-only">  </span>表格</a></div>

              <div class="fa-hover col-xs-4"><a href="#text-height"><i class="fa fa-text-height" aria-hidden="true"></i> <span class="sr-only">  </span>文本高</a></div>

              <div class="fa-hover col-xs-4"><a href="#text-width"><i class="fa fa-text-width" aria-hidden="true"></i> <span class="sr-only">  </span>文本宽</a></div>

              <div class="fa-hover col-xs-4"><a href="#th"><i class="fa fa-th" aria-hidden="true"></i> <span class="sr-only">  </span>表格1</a></div>

              <div class="fa-hover col-xs-4"><a href="#th-large"><i class="fa fa-th-large" aria-hidden="true"></i> <span class="sr-only">  </span>表格2</a></div>

              <div class="fa-hover col-xs-4"><a href="#th-list"><i class="fa fa-th-list" aria-hidden="true"></i> <span class="sr-only">  </span>表格3</a></div>

              <div class="fa-hover col-xs-4"><a href="#underline"><i class="fa fa-underline" aria-hidden="true"></i> <span class="sr-only">  </span>下划线</a></div>

              <div class="fa-hover col-xs-4"><a href="#undo"><i class="fa fa-undo" aria-hidden="true"></i> <span class="sr-only">  </span>取消</a></div>

              <div class="fa-hover col-xs-4"><a href="#chain-broken"><i class="fa fa-unlink" aria-hidden="true"></i> <span class="sr-only">  </span>删除链 <span class="text-muted"> </span></a></div>
          </div>
        </section>

        <section id="directional">
          <h2 class="page-header">方向</h2>
          <div class="row fontawesome-icon-list">
              <div class="fa-hover col-xs-4"><a href="#angle-double-down"><i class="fa fa-angle-double-down" aria-hidden="true"></i> <span class="sr-only">  </span>方向1</a></div>

              <div class="fa-hover col-xs-4"><a href="#angle-double-left"><i class="fa fa-angle-double-left" aria-hidden="true"></i> <span class="sr-only">  </span>方向2</a></div>

              <div class="fa-hover col-xs-4"><a href="#angle-double-right"><i class="fa fa-angle-double-right" aria-hidden="true"></i> <span class="sr-only">  </span>方向3</a></div>

              <div class="fa-hover col-xs-4"><a href="#angle-double-up"><i class="fa fa-angle-double-up" aria-hidden="true"></i> <span class="sr-only">  </span>方向4</a></div>

              <div class="fa-hover col-xs-4"><a href="#angle-down"><i class="fa fa-angle-down" aria-hidden="true"></i> <span class="sr-only">  </span>方向1</a></div>

              <div class="fa-hover col-xs-4"><a href="#angle-left"><i class="fa fa-angle-left" aria-hidden="true"></i> <span class="sr-only">  </span>方向2</a></div>

              <div class="fa-hover col-xs-4"><a href="#angle-right"><i class="fa fa-angle-right" aria-hidden="true"></i> <span class="sr-only">  </span>方向3</a></div>

              <div class="fa-hover col-xs-4"><a href="#angle-up"><i class="fa fa-angle-up" aria-hidden="true"></i> <span class="sr-only">  </span>方向4</a></div>

              <div class="fa-hover col-xs-4"><a href="#arrow-circle-down"><i class="fa fa-arrow-circle-down" aria-hidden="true"></i> <span class="sr-only">  </span>方向1</a></div>

              <div class="fa-hover col-xs-4"><a href="#arrow-circle-left"><i class="fa fa-arrow-circle-left" aria-hidden="true"></i> <span class="sr-only">  </span>方向2</a></div>

              <div class="fa-hover col-xs-4"><a href="#arrow-circle-o-down"><i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i> <span class="sr-only">  </span>方向3</a></div>

              <div class="fa-hover col-xs-4"><a href="#arrow-circle-o-left"><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> <span class="sr-only">  </span>方向4</a></div>

              <div class="fa-hover col-xs-4"><a href="#arrow-circle-o-right"><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> <span class="sr-only">  </span>方向1</a></div>

              <div class="fa-hover col-xs-4"><a href="#arrow-circle-o-up"><i class="fa fa-arrow-circle-o-up" aria-hidden="true"></i> <span class="sr-only">  </span>方向2</a></div>

              <div class="fa-hover col-xs-4"><a href="#arrow-circle-right"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i> <span class="sr-only">  </span>方向3</a></div>

              <div class="fa-hover col-xs-4"><a href="#arrow-circle-up"><i class="fa fa-arrow-circle-up" aria-hidden="true"></i> <span class="sr-only">  </span>方向4</a></div>

              <div class="fa-hover col-xs-4"><a href="#arrow-down"><i class="fa fa-arrow-down" aria-hidden="true"></i> <span class="sr-only">  </span>方向1</a></div>

              <div class="fa-hover col-xs-4"><a href="#arrow-left"><i class="fa fa-arrow-left" aria-hidden="true"></i> <span class="sr-only">  </span>方向2</a></div>

              <div class="fa-hover col-xs-4"><a href="#arrow-right"><i class="fa fa-arrow-right" aria-hidden="true"></i> <span class="sr-only">  </span>方向3</a></div>

              <div class="fa-hover col-xs-4"><a href="#arrow-up"><i class="fa fa-arrow-up" aria-hidden="true"></i> <span class="sr-only">  </span>方向4</a></div>

              <div class="fa-hover col-xs-4"><a href="#arrows"><i class="fa fa-arrows" aria-hidden="true"></i> <span class="sr-only">  </span>方向1</a></div>

              <div class="fa-hover col-xs-4"><a href="#arrows-alt"><i class="fa fa-arrows-alt" aria-hidden="true"></i> <span class="sr-only">  </span>方向2</a></div>

              <div class="fa-hover col-xs-4"><a href="#arrows-h"><i class="fa fa-arrows-h" aria-hidden="true"></i> <span class="sr-only">  </span>方向3</a></div>

              <div class="fa-hover col-xs-4"><a href="#arrows-v"><i class="fa fa-arrows-v" aria-hidden="true"></i> <span class="sr-only">  </span>方向4</a></div>

              <div class="fa-hover col-xs-4"><a href="#caret-down"><i class="fa fa-caret-down" aria-hidden="true"></i> <span class="sr-only">  </span>方向1</a></div>

              <div class="fa-hover col-xs-4"><a href="#caret-left"><i class="fa fa-caret-left" aria-hidden="true"></i> <span class="sr-only">  </span>方向2</a></div>

              <div class="fa-hover col-xs-4"><a href="#caret-right"><i class="fa fa-caret-right" aria-hidden="true"></i> <span class="sr-only">  </span>方向3</a></div>

              <div class="fa-hover col-xs-4"><a href="#caret-square-o-down"><i class="fa fa-caret-square-o-down" aria-hidden="true"></i> <span class="sr-only">  </span>方向1</a></div>

              <div class="fa-hover col-xs-4"><a href="#caret-square-o-left"><i class="fa fa-caret-square-o-left" aria-hidden="true"></i> <span class="sr-only">  </span>方向2</a></div>

              <div class="fa-hover col-xs-4"><a href="#caret-square-o-right"><i class="fa fa-caret-square-o-right" aria-hidden="true"></i> <span class="sr-only">  </span>方向3</a></div>

              <div class="fa-hover col-xs-4"><a href="#caret-square-o-up"><i class="fa fa-caret-square-o-up" aria-hidden="true"></i> <span class="sr-only">  </span>方向4</a></div>

              <div class="fa-hover col-xs-4"><a href="#caret-up"><i class="fa fa-caret-up" aria-hidden="true"></i> <span class="sr-only">  </span>方向1</a></div>

              <div class="fa-hover col-xs-4"><a href="#chevron-circle-down"><i class="fa fa-chevron-circle-down" aria-hidden="true"></i> <span class="sr-only">  </span>方向1</a></div>

              <div class="fa-hover col-xs-4"><a href="#chevron-circle-left"><i class="fa fa-chevron-circle-left" aria-hidden="true"></i> <span class="sr-only">  </span>方向2</a></div>

              <div class="fa-hover col-xs-4"><a href="#chevron-circle-right"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i> <span class="sr-only">  </span>方向3</a></div>

              <div class="fa-hover col-xs-4"><a href="#chevron-circle-up"><i class="fa fa-chevron-circle-up" aria-hidden="true"></i> <span class="sr-only">  </span>方向4</a></div>

              <div class="fa-hover col-xs-4"><a href="#chevron-down"><i class="fa fa-chevron-down" aria-hidden="true"></i> <span class="sr-only">  </span>方向1</a></div>

              <div class="fa-hover col-xs-4"><a href="#chevron-left"><i class="fa fa-chevron-left" aria-hidden="true"></i> <span class="sr-only">  </span>方向2</a></div>

              <div class="fa-hover col-xs-4"><a href="#chevron-right"><i class="fa fa-chevron-right" aria-hidden="true"></i> <span class="sr-only">  </span>方向3</a></div>

              <div class="fa-hover col-xs-4"><a href="#chevron-up"><i class="fa fa-chevron-up" aria-hidden="true"></i> <span class="sr-only">  </span>方向4</a></div>

              <div class="fa-hover col-xs-4"><a href="#exchange"><i class="fa fa-exchange" aria-hidden="true"></i> <span class="sr-only">  </span>交换</a></div>

              <div class="fa-hover col-xs-4"><a href="#hand-o-down"><i class="fa fa-hand-o-down" aria-hidden="true"></i> <span class="sr-only">  </span>方向1</a></div>

              <div class="fa-hover col-xs-4"><a href="#hand-o-left"><i class="fa fa-hand-o-left" aria-hidden="true"></i> <span class="sr-only">  </span>方向2</a></div>

              <div class="fa-hover col-xs-4"><a href="#hand-o-right"><i class="fa fa-hand-o-right" aria-hidden="true"></i> <span class="sr-only">  </span>方向3</a></div>

              <div class="fa-hover col-xs-4"><a href="#hand-o-up"><i class="fa fa-hand-o-up" aria-hidden="true"></i> <span class="sr-only">  </span>方向4</a></div>

              <div class="fa-hover col-xs-4"><a href="#long-arrow-down"><i class="fa fa-long-arrow-down" aria-hidden="true"></i> <span class="sr-only">  </span>方向1</a></div>

              <div class="fa-hover col-xs-4"><a href="#long-arrow-left"><i class="fa fa-long-arrow-left" aria-hidden="true"></i> <span class="sr-only">  </span>方向2</a></div>

              <div class="fa-hover col-xs-4"><a href="#long-arrow-right"><i class="fa fa-long-arrow-right" aria-hidden="true"></i> <span class="sr-only">  </span>方向3</a></div>

              <div class="fa-hover col-xs-4"><a href="#long-arrow-up"><i class="fa fa-long-arrow-up" aria-hidden="true"></i> <span class="sr-only">  </span>方向4</a></div>

              <div class="fa-hover col-xs-4"><a href="#caret-square-o-down"><i class="fa fa-toggle-down" aria-hidden="true"></i> <span class="sr-only">  </span>方向1<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#caret-square-o-left"><i class="fa fa-toggle-left" aria-hidden="true"></i> <span class="sr-only">  </span>方向2<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#caret-square-o-right"><i class="fa fa-toggle-right" aria-hidden="true"></i> <span class="sr-only">  </span>方向3<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#caret-square-o-up"><i class="fa fa-toggle-up" aria-hidden="true"></i> <span class="sr-only">  </span>方向4<span class="text-muted"> </span></a></div>
          </div>
        </section>

        <section id="video-player">
          <h2 class="page-header">视频播放</h2>
          <div class="row fontawesome-icon-list">
              <div class="fa-hover col-xs-4"><a href="#arrows-alt"><i class="fa fa-arrows-alt" aria-hidden="true"></i> <span class="sr-only">  </span>全屏</a></div>

              <div class="fa-hover col-xs-4"><a href="#backward"><i class="fa fa-backward" aria-hidden="true"></i> <span class="sr-only">  </span>向后</a></div>

              <div class="fa-hover col-xs-4"><a href="#compress"><i class="fa fa-compress" aria-hidden="true"></i> <span class="sr-only">  </span>压缩</a></div>

              <div class="fa-hover col-xs-4"><a href="#eject"><i class="fa fa-eject" aria-hidden="true"></i> <span class="sr-only">  </span>喷射</a></div>

              <div class="fa-hover col-xs-4"><a href="#expand"><i class="fa fa-expand" aria-hidden="true"></i> <span class="sr-only">  </span>扩张</a></div>

              <div class="fa-hover col-xs-4"><a href="#fast-backward"><i class="fa fa-fast-backward" aria-hidden="true"></i> <span class="sr-only">  </span>快退</a></div>

              <div class="fa-hover col-xs-4"><a href="#fast-forward"><i class="fa fa-fast-forward" aria-hidden="true"></i> <span class="sr-only">  </span>快进</a></div>

              <div class="fa-hover col-xs-4"><a href="#forward"><i class="fa fa-forward" aria-hidden="true"></i> <span class="sr-only">  </span>下一个</a></div>

              <div class="fa-hover col-xs-4"><a href="#pause"><i class="fa fa-pause" aria-hidden="true"></i> <span class="sr-only">  </span>暂停</a></div>

              <div class="fa-hover col-xs-4"><a href="#pause-circle"><i class="fa fa-pause-circle" aria-hidden="true"></i> <span class="sr-only">  </span>暂停</a></div>

              <div class="fa-hover col-xs-4"><a href="#pause-circle-o"><i class="fa fa-pause-circle-o" aria-hidden="true"></i> <span class="sr-only">  </span>暂停</a></div>

              <div class="fa-hover col-xs-4"><a href="#play"><i class="fa fa-play" aria-hidden="true"></i> <span class="sr-only">  </span>播放</a></div>

              <div class="fa-hover col-xs-4"><a href="#play-circle"><i class="fa fa-play-circle" aria-hidden="true"></i> <span class="sr-only">  </span>播放</a></div>

              <div class="fa-hover col-xs-4"><a href="#play-circle-o"><i class="fa fa-play-circle-o" aria-hidden="true"></i> <span class="sr-only">  </span>播放</a></div>

              <div class="fa-hover col-xs-4"><a href="#random"><i class="fa fa-random" aria-hidden="true"></i> <span class="sr-only">  </span>随机</a></div>

              <div class="fa-hover col-xs-4"><a href="#step-backward"><i class="fa fa-step-backward" aria-hidden="true"></i> <span class="sr-only">  </span>后退</a></div>

              <div class="fa-hover col-xs-4"><a href="#step-forward"><i class="fa fa-step-forward" aria-hidden="true"></i> <span class="sr-only">  </span>前进</a></div>

              <div class="fa-hover col-xs-4"><a href="#stop"><i class="fa fa-stop" aria-hidden="true"></i> <span class="sr-only">  </span>停止</a></div>

              <div class="fa-hover col-xs-4"><a href="#stop-circle"><i class="fa fa-stop-circle" aria-hidden="true"></i> <span class="sr-only">  </span>停止</a></div>

              <div class="fa-hover col-xs-4"><a href="#stop-circle-o"><i class="fa fa-stop-circle-o" aria-hidden="true"></i> <span class="sr-only">  </span>停止</a></div>

              <div class="fa-hover col-xs-4"><a href="#youtube-play"><i class="fa fa-youtube-play" aria-hidden="true"></i> <span class="sr-only">  </span>youtube</a></div>
          </div>
        </section>

        <section id="brand">
      
          <h2 class="page-header">商标</h2>
          <div class="row fontawesome-icon-list margin-bottom-lg">
              <div class="fa-hover col-xs-4"><a href="#500px"><i class="fa fa-500px" aria-hidden="true"></i> <span class="sr-only">  </span>500px</a></div>

              <div class="fa-hover col-xs-4"><a href="#adn"><i class="fa fa-adn" aria-hidden="true"></i> <span class="sr-only">  </span>ADN</a></div>

              <div class="fa-hover col-xs-4"><a href="#amazon"><i class="fa fa-amazon" aria-hidden="true"></i> <span class="sr-only">  </span>amazon</a></div>

              <div class="fa-hover col-xs-4"><a href="#android"><i class="fa fa-android" aria-hidden="true"></i> <span class="sr-only">  </span>安卓</a></div>

              <div class="fa-hover col-xs-4"><a href="#angellist"><i class="fa fa-angellist" aria-hidden="true"></i> <span class="sr-only">  </span>angel</a></div>

              <div class="fa-hover col-xs-4"><a href="#apple"><i class="fa fa-apple" aria-hidden="true"></i> <span class="sr-only">  </span>apple</a></div>

              <div class="fa-hover col-xs-4"><a href="#behance"><i class="fa fa-behance" aria-hidden="true"></i> <span class="sr-only">  </span>hance</a></div>

              <div class="fa-hover col-xs-4"><a href="#behance-square"><i class="fa fa-behance-square" aria-hidden="true"></i> <span class="sr-only">  </span>hance</a></div>

              <div class="fa-hover col-xs-4"><a href="#bitbucket"><i class="fa fa-bitbucket" aria-hidden="true"></i> <span class="sr-only">  </span>bit</a></div>

              <div class="fa-hover col-xs-4"><a href="#bitbucket-square"><i class="fa fa-bitbucket-square" aria-hidden="true"></i> <span class="sr-only">  </span>bit</a></div>

              <div class="fa-hover col-xs-4"><a href="#btc"><i class="fa fa-bitcoin" aria-hidden="true"></i> <span class="sr-only">  </span>bitc<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#black-tie"><i class="fa fa-black-tie" aria-hidden="true"></i> <span class="sr-only">  </span>black</a></div>

              <div class="fa-hover col-xs-4"><a href="#bluetooth"><i class="fa fa-bluetooth" aria-hidden="true"></i> <span class="sr-only">  </span>blue</a></div>

              <div class="fa-hover col-xs-4"><a href="#bluetooth-b"><i class="fa fa-bluetooth-b" aria-hidden="true"></i> <span class="sr-only">  </span>blue</a></div>

              <div class="fa-hover col-xs-4"><a href="#btc"><i class="fa fa-btc" aria-hidden="true"></i> <span class="sr-only">  </span>btc</a></div>

              <div class="fa-hover col-xs-4"><a href="#buysellads"><i class="fa fa-buysellads" aria-hidden="true"></i> <span class="sr-only">  </span>buy</a></div>

              <div class="fa-hover col-xs-4"><a href="#cc-amex"><i class="fa fa-cc-amex" aria-hidden="true"></i> <span class="sr-only">  </span>amex</a></div>

              <div class="fa-hover col-xs-4"><a href="#cc-diners-club"><i class="fa fa-cc-diners-club" aria-hidden="true"></i> <span class="sr-only">  </span>din</a></div>

              <div class="fa-hover col-xs-4"><a href="#cc-discover"><i class="fa fa-cc-discover" aria-hidden="true"></i> <span class="sr-only">  </span>disc</a></div>

              <div class="fa-hover col-xs-4"><a href="#cc-jcb"><i class="fa fa-cc-jcb" aria-hidden="true"></i> <span class="sr-only">  </span>jcb</a></div>

              <div class="fa-hover col-xs-4"><a href="#cc-mastercard"><i class="fa fa-cc-mastercard" aria-hidden="true"></i> <span class="sr-only">  </span>master</a></div>

              <div class="fa-hover col-xs-4"><a href="#cc-paypal"><i class="fa fa-cc-paypal" aria-hidden="true"></i> <span class="sr-only">  </span>paypal</a></div>

              <div class="fa-hover col-xs-4"><a href="#cc-stripe"><i class="fa fa-cc-stripe" aria-hidden="true"></i> <span class="sr-only">  </span>stripe</a></div>

              <div class="fa-hover col-xs-4"><a href="#cc-visa"><i class="fa fa-cc-visa" aria-hidden="true"></i> <span class="sr-only">  </span>visa</a></div>

              <div class="fa-hover col-xs-4"><a href="#chrome"><i class="fa fa-chrome" aria-hidden="true"></i> <span class="sr-only">  </span>chrome</a></div>

              <div class="fa-hover col-xs-4"><a href="#codepen"><i class="fa fa-codepen" aria-hidden="true"></i> <span class="sr-only">  </span>code</a></div>

              <div class="fa-hover col-xs-4"><a href="#codiepie"><i class="fa fa-codiepie" aria-hidden="true"></i> <span class="sr-only">  </span>cod</a></div>

              <div class="fa-hover col-xs-4"><a href="#connectdevelop"><i class="fa fa-connectdevelop" aria-hidden="true"></i> <span class="sr-only">  </span>con</a></div>

              <div class="fa-hover col-xs-4"><a href="#contao"><i class="fa fa-contao" aria-hidden="true"></i> <span class="sr-only">  </span>contao</a></div>

              <div class="fa-hover col-xs-4"><a href="#css3"><i class="fa fa-css3" aria-hidden="true"></i> <span class="sr-only">  </span>css3</a></div>

              <div class="fa-hover col-xs-4"><a href="#dashcube"><i class="fa fa-dashcube" aria-hidden="true"></i> <span class="sr-only">  </span>dash</a></div>

              <div class="fa-hover col-xs-4"><a href="#delicious"><i class="fa fa-delicious" aria-hidden="true"></i> <span class="sr-only">  </span>deli</a></div>

              <div class="fa-hover col-xs-4"><a href="#deviantart"><i class="fa fa-deviantart" aria-hidden="true"></i> <span class="sr-only">  </span>dev</a></div>

              <div class="fa-hover col-xs-4"><a href="#digg"><i class="fa fa-digg" aria-hidden="true"></i> <span class="sr-only">  </span>digg</a></div>

              <div class="fa-hover col-xs-4"><a href="#dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i> <span class="sr-only">  </span>drib</a></div>

              <div class="fa-hover col-xs-4"><a href="#dropbox"><i class="fa fa-dropbox" aria-hidden="true"></i> <span class="sr-only">  </span>drop</a></div>

              <div class="fa-hover col-xs-4"><a href="#drupal"><i class="fa fa-drupal" aria-hidden="true"></i> <span class="sr-only">  </span>drupal</a></div>

              <div class="fa-hover col-xs-4"><a href="#edge"><i class="fa fa-edge" aria-hidden="true"></i> <span class="sr-only">  </span>edge</a></div>

              <div class="fa-hover col-xs-4"><a href="#empire"><i class="fa fa-empire" aria-hidden="true"></i> <span class="sr-only">  </span>empire</a></div>

              <div class="fa-hover col-xs-4"><a href="#envira"><i class="fa fa-envira" aria-hidden="true"></i> <span class="sr-only">  </span>envira</a></div>

              <div class="fa-hover col-xs-4"><a href="#expeditedssl"><i class="fa fa-expeditedssl" aria-hidden="true"></i> <span class="sr-only">  </span>exp</a></div>

              <div class="fa-hover col-xs-4"><a href="#facebook"><i class="fa fa-facebook" aria-hidden="true"></i> <span class="sr-only">  </span>FB</a></div>

              <div class="fa-hover col-xs-4"><a href="#facebook"><i class="fa fa-facebook-f" aria-hidden="true"></i> <span class="sr-only">  </span>FB<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#facebook-official"><i class="fa fa-facebook-official" aria-hidden="true"></i> <span class="sr-only">  </span>FB</a></div>

              <div class="fa-hover col-xs-4"><a href="#facebook-square"><i class="fa fa-facebook-square" aria-hidden="true"></i> <span class="sr-only">  </span>FB</a></div>

              <div class="fa-hover col-xs-4"><a href="#firefox"><i class="fa fa-firefox" aria-hidden="true"></i> <span class="sr-only">  </span>firefox</a></div>

              <div class="fa-hover col-xs-4"><a href="#first-order"><i class="fa fa-first-order" aria-hidden="true"></i> <span class="sr-only">  </span>first</a></div>

              <div class="fa-hover col-xs-4"><a href="#flickr"><i class="fa fa-flickr" aria-hidden="true"></i> <span class="sr-only">  </span>flickr</a></div>

              <div class="fa-hover col-xs-4"><a href="#fonticons"><i class="fa fa-fonticons" aria-hidden="true"></i> <span class="sr-only">  </span>icons</a></div>

              <div class="fa-hover col-xs-4"><a href="#fort-awesome"><i class="fa fa-fort-awesome" aria-hidden="true"></i> <span class="sr-only">  </span>aw</a></div>

              <div class="fa-hover col-xs-4"><a href="#forumbee"><i class="fa fa-forumbee" aria-hidden="true"></i> <span class="sr-only">  </span>umbee</a></div>

              <div class="fa-hover col-xs-4"><a href="#foursquare"><i class="fa fa-foursquare" aria-hidden="true"></i> <span class="sr-only">  </span>square</a></div>

              <div class="fa-hover col-xs-4"><a href="#empire"><i class="fa fa-ge" aria-hidden="true"></i> <span class="sr-only">  </span>ge <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#get-pocket"><i class="fa fa-get-pocket" aria-hidden="true"></i> <span class="sr-only">  </span>pocket</a></div>

              <div class="fa-hover col-xs-4"><a href="#gg"><i class="fa fa-gg" aria-hidden="true"></i> <span class="sr-only">  </span>gg</a></div>

              <div class="fa-hover col-xs-4"><a href="#gg-circle"><i class="fa fa-gg-circle" aria-hidden="true"></i> <span class="sr-only">  </span>circle</a></div>

              <div class="fa-hover col-xs-4"><a href="#git"><i class="fa fa-git" aria-hidden="true"></i> <span class="sr-only">  </span>git</a></div>

              <div class="fa-hover col-xs-4"><a href="#git-square"><i class="fa fa-git-square" aria-hidden="true"></i> <span class="sr-only">  </span>square</a></div>

              <div class="fa-hover col-xs-4"><a href="#github"><i class="fa fa-github" aria-hidden="true"></i> <span class="sr-only">  </span>github</a></div>

              <div class="fa-hover col-xs-4"><a href="#github-alt"><i class="fa fa-github-alt" aria-hidden="true"></i> <span class="sr-only">  </span>github</a></div>

              <div class="fa-hover col-xs-4"><a href="#github-square"><i class="fa fa-github-square" aria-hidden="true"></i> <span class="sr-only">  </span>github</a></div>

              <div class="fa-hover col-xs-4"><a href="#gratipay"><i class="fa fa-gittip" aria-hidden="true"></i> <span class="sr-only">  </span>gittip <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#google"><i class="fa fa-google" aria-hidden="true"></i> <span class="sr-only">  </span>google</a></div>

              <div class="fa-hover col-xs-4"><a href="#google-plus"><i class="fa fa-google-plus" aria-hidden="true"></i> <span class="sr-only">  </span>google</a></div>

              <div class="fa-hover col-xs-4"><a href="#google-plus-official"><i class="fa fa-google-plus-circle" aria-hidden="true"></i> <span class="sr-only">  </span>google <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#google-plus-official"><i class="fa fa-google-plus-official" aria-hidden="true"></i> <span class="sr-only">  </span>google</a></div>

              <div class="fa-hover col-xs-4"><a href="#google-plus-square"><i class="fa fa-google-plus-square" aria-hidden="true"></i> <span class="sr-only">  </span>google</a></div>

              <div class="fa-hover col-xs-4"><a href="#google-wallet"><i class="fa fa-google-wallet" aria-hidden="true"></i> <span class="sr-only">  </span>wallet</a></div>

              <div class="fa-hover col-xs-4"><a href="#gratipay"><i class="fa fa-gratipay" aria-hidden="true"></i> <span class="sr-only">  </span>grat</a></div>

              <div class="fa-hover col-xs-4"><a href="#hacker-news"><i class="fa fa-hacker-news" aria-hidden="true"></i> <span class="sr-only">  </span>hacker</a></div>

              <div class="fa-hover col-xs-4"><a href="#houzz"><i class="fa fa-houzz" aria-hidden="true"></i> <span class="sr-only">  </span>houzz</a></div>

              <div class="fa-hover col-xs-4"><a href="#html5"><i class="fa fa-html5" aria-hidden="true"></i> <span class="sr-only">  </span>html5</a></div>

              <div class="fa-hover col-xs-4"><a href="#instagram"><i class="fa fa-instagram" aria-hidden="true"></i> <span class="sr-only">  </span>gram</a></div>

              <div class="fa-hover col-xs-4"><a href="#internet-explorer"><i class="fa fa-internet-explorer" aria-hidden="true"></i> <span class="sr-only">  </span>net</a></div>

              <div class="fa-hover col-xs-4"><a href="#ioxhost"><i class="fa fa-ioxhost" aria-hidden="true"></i> <span class="sr-only">  </span>iox</a></div>

              <div class="fa-hover col-xs-4"><a href="#joomla"><i class="fa fa-joomla" aria-hidden="true"></i> <span class="sr-only">  </span>joomla</a></div>

              <div class="fa-hover col-xs-4"><a href="#jsfiddle"><i class="fa fa-jsfiddle" aria-hidden="true"></i> <span class="sr-only">  </span>fiddle</a></div>

              <div class="fa-hover col-xs-4"><a href="#lastfm"><i class="fa fa-lastfm" aria-hidden="true"></i> <span class="sr-only">  </span>lastfm</a></div>

              <div class="fa-hover col-xs-4"><a href="#lastfm-square"><i class="fa fa-lastfm-square" aria-hidden="true"></i> <span class="sr-only">  </span>square</a></div>

              <div class="fa-hover col-xs-4"><a href="#leanpub"><i class="fa fa-leanpub" aria-hidden="true"></i> <span class="sr-only">  </span>pub</a></div>

              <div class="fa-hover col-xs-4"><a href="#linkedin"><i class="fa fa-linkedin" aria-hidden="true"></i> <span class="sr-only">  </span>link</a></div>

              <div class="fa-hover col-xs-4"><a href="#linkedin-square"><i class="fa fa-linkedin-square" aria-hidden="true"></i> <span class="sr-only">  </span>linked</a></div>

              <div class="fa-hover col-xs-4"><a href="#linux"><i class="fa fa-linux" aria-hidden="true"></i> <span class="sr-only">  </span>linux</a></div>

              <div class="fa-hover col-xs-4"><a href="#maxcdn"><i class="fa fa-maxcdn" aria-hidden="true"></i> <span class="sr-only">  </span>maxcdn</a></div>

              <div class="fa-hover col-xs-4"><a href="#meanpath"><i class="fa fa-meanpath" aria-hidden="true"></i> <span class="sr-only">  </span>mean</a></div>

              <div class="fa-hover col-xs-4"><a href="#medium"><i class="fa fa-medium" aria-hidden="true"></i> <span class="sr-only">  </span>medium</a></div>

              <div class="fa-hover col-xs-4"><a href="#mixcloud"><i class="fa fa-mixcloud" aria-hidden="true"></i> <span class="sr-only">  </span>cloud</a></div>

              <div class="fa-hover col-xs-4"><a href="#modx"><i class="fa fa-modx" aria-hidden="true"></i> <span class="sr-only">  </span>modx</a></div>

              <div class="fa-hover col-xs-4"><a href="#odnoklassniki"><i class="fa fa-odnoklassniki" aria-hidden="true"></i> <span class="sr-only">  </span>ki</a></div>

              <div class="fa-hover col-xs-4"><a href="#odnoklassniki-square"><i class="fa fa-odnoklassniki-square" aria-hidden="true"></i> <span class="sr-only">  </span>ki</a></div>

              <div class="fa-hover col-xs-4"><a href="#opencart"><i class="fa fa-opencart" aria-hidden="true"></i> <span class="sr-only">  </span>cart</a></div>

              <div class="fa-hover col-xs-4"><a href="#openid"><i class="fa fa-openid" aria-hidden="true"></i> <span class="sr-only">  </span>id</a></div>

              <div class="fa-hover col-xs-4"><a href="#opera"><i class="fa fa-opera" aria-hidden="true"></i> <span class="sr-only">  </span>opera</a></div>

              <div class="fa-hover col-xs-4"><a href="#optin-monster"><i class="fa fa-optin-monster" aria-hidden="true"></i> <span class="sr-only">  </span>optin</a></div>

              <div class="fa-hover col-xs-4"><a href="#pagelines"><i class="fa fa-pagelines" aria-hidden="true"></i> <span class="sr-only">  </span>lines</a></div>

              <div class="fa-hover col-xs-4"><a href="#paypal"><i class="fa fa-paypal" aria-hidden="true"></i> <span class="sr-only">  </span>paypal</a></div>

              <div class="fa-hover col-xs-4"><a href="#pied-piper"><i class="fa fa-pied-piper" aria-hidden="true"></i> <span class="sr-only">  </span>piper</a></div>

              <div class="fa-hover col-xs-4"><a href="#pied-piper-alt"><i class="fa fa-pied-piper-alt" aria-hidden="true"></i> <span class="sr-only">  </span>pied</a></div>

              <div class="fa-hover col-xs-4"><a href="#pied-piper-pp"><i class="fa fa-pied-piper-pp" aria-hidden="true"></i> <span class="sr-only">  </span>piedp</a></div>

              <div class="fa-hover col-xs-4"><a href="#pinterest"><i class="fa fa-pinterest" aria-hidden="true"></i> <span class="sr-only">  </span>rest</a></div>

              <div class="fa-hover col-xs-4"><a href="#pinterest-p"><i class="fa fa-pinterest-p" aria-hidden="true"></i> <span class="sr-only">  </span>rest</a></div>

              <div class="fa-hover col-xs-4"><a href="#pinterest-square"><i class="fa fa-pinterest-square" aria-hidden="true"></i> <span class="sr-only">  </span>rest</a></div>

              <div class="fa-hover col-xs-4"><a href="#product-hunt"><i class="fa fa-product-hunt" aria-hidden="true"></i> <span class="sr-only">  </span>hunt</a></div>

              <div class="fa-hover col-xs-4"><a href="#qq"><i class="fa fa-qq" aria-hidden="true"></i> <span class="sr-only">  </span>qq</a></div>

              <div class="fa-hover col-xs-4"><a href="#rebel"><i class="fa fa-ra" aria-hidden="true"></i> <span class="sr-only">  </span>ra <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#rebel"><i class="fa fa-rebel" aria-hidden="true"></i> <span class="sr-only">  </span>rebel</a></div>

              <div class="fa-hover col-xs-4"><a href="#reddit"><i class="fa fa-reddit" aria-hidden="true"></i> <span class="sr-only">  </span>reddit</a></div>

              <div class="fa-hover col-xs-4"><a href="#reddit-alien"><i class="fa fa-reddit-alien" aria-hidden="true"></i> <span class="sr-only">  </span>reddit</a></div>

              <div class="fa-hover col-xs-4"><a href="#reddit-square"><i class="fa fa-reddit-square" aria-hidden="true"></i> <span class="sr-only">  </span>reddit</a></div>

              <div class="fa-hover col-xs-4"><a href="#renren"><i class="fa fa-renren" aria-hidden="true"></i> <span class="sr-only">  </span>renren</a></div>

              <div class="fa-hover col-xs-4"><a href="#rebel"><i class="fa fa-resistance" aria-hidden="true"></i> <span class="sr-only">  </span>tance <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#safari"><i class="fa fa-safari" aria-hidden="true"></i> <span class="sr-only">  </span>safari</a></div>

              <div class="fa-hover col-xs-4"><a href="#scribd"><i class="fa fa-scribd" aria-hidden="true"></i> <span class="sr-only">  </span>scribd</a></div>

              <div class="fa-hover col-xs-4"><a href="#sellsy"><i class="fa fa-sellsy" aria-hidden="true"></i> <span class="sr-only">  </span>sellsy</a></div>

              <div class="fa-hover col-xs-4"><a href="#share-alt"><i class="fa fa-share-alt" aria-hidden="true"></i> <span class="sr-only">  </span>share</a></div>

              <div class="fa-hover col-xs-4"><a href="#share-alt-square"><i class="fa fa-share-alt-square" aria-hidden="true"></i> <span class="sr-only">  </span>share</a></div>

              <div class="fa-hover col-xs-4"><a href="#shirtsinbulk"><i class="fa fa-shirtsinbulk" aria-hidden="true"></i> <span class="sr-only">  </span>shirt</a></div>

              <div class="fa-hover col-xs-4"><a href="#simplybuilt"><i class="fa fa-simplybuilt" aria-hidden="true"></i> <span class="sr-only">  </span>simp</a></div>

              <div class="fa-hover col-xs-4"><a href="#skyatlas"><i class="fa fa-skyatlas" aria-hidden="true"></i> <span class="sr-only">  </span>sky</a></div>

              <div class="fa-hover col-xs-4"><a href="#skype"><i class="fa fa-skype" aria-hidden="true"></i> <span class="sr-only">  </span>skype</a></div>

              <div class="fa-hover col-xs-4"><a href="#slack"><i class="fa fa-slack" aria-hidden="true"></i> <span class="sr-only">  </span>slack</a></div>

              <div class="fa-hover col-xs-4"><a href="#slideshare"><i class="fa fa-slideshare" aria-hidden="true"></i> <span class="sr-only">  </span>slide</a></div>

              <div class="fa-hover col-xs-4"><a href="#soundcloud"><i class="fa fa-soundcloud" aria-hidden="true"></i> <span class="sr-only">  </span>sound</a></div>

              <div class="fa-hover col-xs-4"><a href="#spotify"><i class="fa fa-spotify" aria-hidden="true"></i> <span class="sr-only">  </span>tify</a></div>

              <div class="fa-hover col-xs-4"><a href="#stack-exchange"><i class="fa fa-stack-exchange" aria-hidden="true"></i> <span class="sr-only">  </span>stack</a></div>

              <div class="fa-hover col-xs-4"><a href="#stack-overflow"><i class="fa fa-stack-overflow" aria-hidden="true"></i> <span class="sr-only">  </span>stack</a></div>

              <div class="fa-hover col-xs-4"><a href="#steam"><i class="fa fa-steam" aria-hidden="true"></i> <span class="sr-only">  </span>steam</a></div>

              <div class="fa-hover col-xs-4"><a href="#steam-square"><i class="fa fa-steam-square" aria-hidden="true"></i> <span class="sr-only">  </span>steam</a></div>

              <div class="fa-hover col-xs-4"><a href="#stumbleupon"><i class="fa fa-stumbleupon" aria-hidden="true"></i> <span class="sr-only">  </span>stumb</a></div>

              <div class="fa-hover col-xs-4"><a href="#stumbleupon-circle"><i class="fa fa-stumbleupon-circle" aria-hidden="true"></i> <span class="sr-only">  </span>stumb</a></div>

              <div class="fa-hover col-xs-4"><a href="#tencent-weibo"><i class="fa fa-tencent-weibo" aria-hidden="true"></i> <span class="sr-only">  </span>weibo</a></div>

              <div class="fa-hover col-xs-4"><a href="#trello"><i class="fa fa-trello" aria-hidden="true"></i> <span class="sr-only">  </span>trello</a></div>

              <div class="fa-hover col-xs-4"><a href="#tripadvisor"><i class="fa fa-tripadvisor" aria-hidden="true"></i> <span class="sr-only">  </span>visor</a></div>

              <div class="fa-hover col-xs-4"><a href="#tumblr"><i class="fa fa-tumblr" aria-hidden="true"></i> <span class="sr-only">  </span>tumblr</a></div>

              <div class="fa-hover col-xs-4"><a href="#tumblr-square"><i class="fa fa-tumblr-square" aria-hidden="true"></i> <span class="sr-only">  </span>tumblr</a></div>

              <div class="fa-hover col-xs-4"><a href="#twitch"><i class="fa fa-twitch" aria-hidden="true"></i> <span class="sr-only">  </span>twitch</a></div>

              <div class="fa-hover col-xs-4"><a href="#twitter"><i class="fa fa-twitter" aria-hidden="true"></i> <span class="sr-only">  </span>twitte</a></div>

              <div class="fa-hover col-xs-4"><a href="#twitter-square"><i class="fa fa-twitter-square" aria-hidden="true"></i> <span class="sr-only">  </span>twitte</a></div>

              <div class="fa-hover col-xs-4"><a href="#usb"><i class="fa fa-usb" aria-hidden="true"></i> <span class="sr-only">  </span>usb</a></div>

              <div class="fa-hover col-xs-4"><a href="#viacoin"><i class="fa fa-viacoin" aria-hidden="true"></i> <span class="sr-only">  </span>coin</a></div>

              <div class="fa-hover col-xs-4"><a href="#vimeo"><i class="fa fa-vimeo" aria-hidden="true"></i> <span class="sr-only">  </span>vimeo</a></div>

              <div class="fa-hover col-xs-4"><a href="#vimeo-square"><i class="fa fa-vimeo-square" aria-hidden="true"></i> <span class="sr-only">  </span>vimeo</a></div>

              <div class="fa-hover col-xs-4"><a href="#vine"><i class="fa fa-vine" aria-hidden="true"></i> <span class="sr-only">  </span>vine</a></div>

              <div class="fa-hover col-xs-4"><a href="#vk"><i class="fa fa-vk" aria-hidden="true"></i> <span class="sr-only">  </span>vk</a></div>

              <div class="fa-hover col-xs-4"><a href="#weixin"><i class="fa fa-wechat" aria-hidden="true"></i> <span class="sr-only">  </span>wechat <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#weibo"><i class="fa fa-weibo" aria-hidden="true"></i> <span class="sr-only">  </span>weibo</a></div>

              <div class="fa-hover col-xs-4"><a href="#weixin"><i class="fa fa-weixin" aria-hidden="true"></i> <span class="sr-only">  </span>weixin</a></div>

              <div class="fa-hover col-xs-4"><a href="#whatsapp"><i class="fa fa-whatsapp" aria-hidden="true"></i> <span class="sr-only">  </span>whats</a></div>

              <div class="fa-hover col-xs-4"><a href="#wikipedia-w"><i class="fa fa-wikipedia-w" aria-hidden="true"></i> <span class="sr-only">  </span>wiki</a></div>

              <div class="fa-hover col-xs-4"><a href="#windows"><i class="fa fa-windows" aria-hidden="true"></i> <span class="sr-only">  </span>window</a></div>

              <div class="fa-hover col-xs-4"><a href="#wordpress"><i class="fa fa-wordpress" aria-hidden="true"></i> <span class="sr-only">  </span>word</a></div>

              <div class="fa-hover col-xs-4"><a href="#xing"><i class="fa fa-xing" aria-hidden="true"></i> <span class="sr-only">  </span>xing</a></div>

              <div class="fa-hover col-xs-4"><a href="#xing-square"><i class="fa fa-xing-square" aria-hidden="true"></i> <span class="sr-only">  </span>xing</a></div>

              <div class="fa-hover col-xs-4"><a href="#y-combinator"><i class="fa fa-y-combinator" aria-hidden="true"></i> <span class="sr-only">  </span>bin</a></div>

              <div class="fa-hover col-xs-4"><a href="#hacker-news"><i class="fa fa-y-combinator-square" aria-hidden="true"></i> <span class="sr-only">  </span>bin<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#yahoo"><i class="fa fa-yahoo" aria-hidden="true"></i> <span class="sr-only">  </span>yahoo</a></div>

              <div class="fa-hover col-xs-4"><a href="#y-combinator"><i class="fa fa-yc" aria-hidden="true"></i> <span class="sr-only">  </span>yc <span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#hacker-news"><i class="fa fa-yc-square" aria-hidden="true"></i> <span class="sr-only">  </span>yc<span class="text-muted"> </span></a></div>

              <div class="fa-hover col-xs-4"><a href="#yelp"><i class="fa fa-yelp" aria-hidden="true"></i> <span class="sr-only">  </span>yelp</a></div>
              <div class="fa-hover col-xs-4"><a href="#youtube"><i class="fa fa-youtube" aria-hidden="true"></i> <span class="sr-only">  </span>ytb</a></div>

              <div class="fa-hover col-xs-4"><a href="#youtube-play"><i class="fa fa-youtube-play" aria-hidden="true"></i> <span class="sr-only">  </span>ytb</a></div>

              <div class="fa-hover col-xs-4"><a href="#youtube-square"><i class="fa fa-youtube-square" aria-hidden="true"></i> <span class="sr-only">  </span>ytb</a></div>
          </div>
          
        </section>
        
        
        
       					<section id="medical">
       			
       					   <h2 class="page-header">医疗图标</h2>
				          <div class="row fontawesome-icon-list">
				              <div class="fa-hover col-xs-4"><a href="#ambulance"><i class="fa fa-ambulance" aria-hidden="true"></i> <span class="sr-only">  </span>救护车</a></div>
				
				              <div class="fa-hover col-xs-4"><a href="#h-square"><i class="fa fa-h-square" aria-hidden="true"></i> <span class="sr-only">  </span>H</a></div>
				
				              <div class="fa-hover col-xs-4"><a href="#heart"><i class="fa fa-heart" aria-hidden="true"></i> <span class="sr-only">  </span>心脏</a></div>
				
				              <div class="fa-hover col-xs-4"><a href="#heart-o"><i class="fa fa-heart-o" aria-hidden="true"></i> <span class="sr-only">  </span>心脏</a></div>
				
				              <div class="fa-hover col-xs-4"><a href="#heartbeat"><i class="fa fa-heartbeat" aria-hidden="true"></i> <span class="sr-only">  </span>心跳</a></div>
				
				              <div class="fa-hover col-xs-4"><a href="#hospital-o"><i class="fa fa-hospital-o" aria-hidden="true"></i> <span class="sr-only">  </span>医院</a></div>
				
				              <div class="fa-hover col-xs-4"><a href="#medkit"><i class="fa fa-medkit" aria-hidden="true"></i> <span class="sr-only">  </span>医药包</a></div>
				
				              <div class="fa-hover col-xs-4"><a href="#plus-square"><i class="fa fa-plus-square" aria-hidden="true"></i> <span class="sr-only">  </span>正号</a></div>
				
				              <div class="fa-hover col-xs-4"><a href="#stethoscope"><i class="fa fa-stethoscope" aria-hidden="true"></i> <span class="sr-only">  </span>听诊器</a></div>
				
				              <div class="fa-hover col-xs-4"><a href="#user-md"><i class="fa fa-user-md" aria-hidden="true"></i> <span class="sr-only">  </span>医生</a></div>
				
				              <div class="fa-hover col-xs-4"><a href="#wheelchair"><i class="fa fa-wheelchair" aria-hidden="true"></i> <span class="sr-only">  </span>轮椅</a></div>
				
				              <div class="fa-hover col-xs-4"><a href="#wheelchair-alt"><i class="fa fa-wheelchair-alt" aria-hidden="true"></i> <span class="sr-only">  </span>轮椅</a></div>
				          </div>
				        </section>

        
        
         
      </div>
		 
		 
		 
		 
		 
		 
		 
		<script src="${hosts}/ace/assets/js/bootstrap.min.js"></script>
	</body>
</html>