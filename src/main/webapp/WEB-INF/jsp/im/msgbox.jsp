<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="hosts" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>消息盒子</title>

<link rel="stylesheet" href="http://res.layui.com/layui/src/css/layui.css">
<style>
.layim-msgbox{margin: 15px;}
.layim-msgbox li{position: relative; margin-bottom: 10px; padding: 0 130px 10px 60px; padding-bottom: 10px; line-height: 22px; border-bottom: 1px dotted #e2e2e2;}
.layim-msgbox .layim-msgbox-tips{margin: 0; padding: 10px 0; border: none; text-align: center; color: #999;}
.layim-msgbox .layim-msgbox-system{padding: 0 10px 10px 10px;}
.layim-msgbox li p span{padding-left: 5px; color: #999;}
.layim-msgbox li p em{font-style: normal; color: #FF5722;}

.layim-msgbox-avatar{position: absolute; left: 0; top: 0; width: 50px; height: 50px;}
.layim-msgbox-user{padding-top: 5px;}
.layim-msgbox-content{margin-top: 3px;}
.layim-msgbox .layui-btn-small{padding: 0 15px; margin-left: 5px;}
.layim-msgbox-btn{position: absolute; right: 0; top: 12px; color: #999;}
</style>
</head>
<body>

<ul class="layim-msgbox" id="LAY_view"></ul>

<div style="margin: 0 15px;">
  <blockquote class="layui-elem-quote">注意：这些都是模拟数据，实际使用时，需将其中的模拟接口改为你的项目真实接口。
  <br>该模版文件所在目录（相对于layui.js）：/css/modules/layim/html/msgbox.html</blockquote>
</div>

<textarea title="消息模版" id="LAY_tpl" style="display:none;">
{{# layui.each(d.data, function(index, item){
  if(item.from){ }}
    <li data-uid="{{ item.from }}" data-fromGroup="{{ item.from_group }}">
      <a href="/u/{{ item.from }}/" target="_blank">
        <img src="{{ item.user.avatar }}" class="layui-circle layim-msgbox-avatar">
      </a>
      <p class="layim-msgbox-user">
        <a href="/u/{{ item.from }}/" target="_blank">{{ item.user.username||'' }}</a>
        <span>{{ item.time }}</span>
      </p>
      <p class="layim-msgbox-content">
        {{ item.content }} 
        <span>{{ item.remark ? '附言: '+item.remark : '' }}</span>
      </p>
      <p class="layim-msgbox-btn">
        <button class="layui-btn layui-btn-small" data-type="agree">同意</button>
        <button class="layui-btn layui-btn-small layui-btn-primary" data-type="refuse">拒绝</button>
      </p>
    </li>
  {{# } else { }}
    <li class="layim-msgbox-system">
      <p><em>系统：</em>{{ item.content }}<span>{{ item.time }}</span></p>
    </li>
  {{# }
}); }}
</textarea>

<!-- 
上述模版采用了 laytpl 语法，不了解的同学可以去看下文档：http://www.layui.com/doc/modules/laytpl.html 
-->


<script src="http://res.layui.com/layui/src/layui.js"></script>
<script>
layui.use(['layim', 'flow'], function(){
  var layim = layui.layim
  ,layer = layui.layer
  ,laytpl = layui.laytpl
  ,$ = layui.jquery
  ,flow = layui.flow;

  var cache = {}; //用于临时记录请求到的数据

  //请求消息
  var renderMsg = function(page, callback){
    
    var res = {
        "code": 0,
        "pages": 1,
        "data": [
            {
                "id": 76,
                "content": "申请添加你为好友",
                "uid": 168,
                "from": 166488,
                "from_group": 0,
                "type": 1,
                "remark": "有问题要问",
                "href": null,
                "read": 1,
                "time": "刚刚",
                "user": {
                    "id": 166488,
                    "avatar": "http://q.qlogo.cn/qqapp/101235792/B704597964F9BD0DB648292D1B09F7E8/100",
                    "username": "李彦宏",
                    "sign": null
                }
            },
            {
                "id": 75,
                "content": "申请添加你为好友",
                "uid": 168,
                "from": 347592,
                "from_group": 0,
                "type": 1,
                "remark": "你好啊！",
                "href": null,
                "read": 1,
                "time": "刚刚",
                "user": {
                    "id": 347592,
                    "avatar": "http://q.qlogo.cn/qqapp/101235792/B78751375E0531675B1272AD994BA875/100",
                    "username": "麻花疼",
                    "sign": null
                }
            },
            {
                "id": 62,
                "content": "雷军 拒绝了你的好友申请",
                "uid": 168,
                "from": null,
                "from_group": null,
                "type": 1,
                "remark": null,
                "href": null,
                "read": 1,
                "time": "10天前",
                "user": {
                    "id": null
                }
            },
            {
                "id": 60,
                "content": "马小云 已经同意你的好友申请",
                "uid": 168,
                "from": null,
                "from_group": null,
                "type": 1,
                "remark": null,
                "href": null,
                "read": 1,
                "time": "10天前",
                "user": {
                    "id": null
                }
            },
            {
                "id": 61,
                "content": "贤心 已经同意你的好友申请",
                "uid": 168,
                "from": null,
                "from_group": null,
                "type": 1,
                "remark": null,
                "href": null,
                "read": 1,
                "time": "10天前",
                "user": {
                    "id": null
                }
            }
        ]
    }
    
    if(res.code != 0){
      return layer.msg(res.msg);
    }

    //记录来源用户信息
    layui.each(res.data, function(index, item){
      cache[item.from] = item.user;
    });

    callback && callback(res.data, res.pages);
    
    //实际部署时，请将下述 getmsg.json 改为你的接口地址
    /*
    $.get('getmsg.json', {
      page: page || 1
    }, function(res){
      if(res.code != 0){
        return layer.msg(res.msg);
      }

      //记录来源用户信息
      layui.each(res.data, function(index, item){
        cache[item.from] = item.user;
      });

      callback && callback(res.data, res.pages);
    });
    */
  };

  //消息信息流
  flow.load({
    elem: '#LAY_view' //流加载容器
    ,isAuto: false
    ,end: '<li class="layim-msgbox-tips">暂无更多新消息</li>'
    ,done: function(page, next){ //加载下一页
      renderMsg(page, function(data, pages){
        var html = laytpl(LAY_tpl.value).render({
          data: data
          ,page: page
        });
        next(html, page < pages);
      });
    }
  });

  //打开页面即把消息标记为已读
  /*
  $.post('/message/read', {
    type: 1
  });
  */

  //操作
  var active = {
    //同意
    agree: function(othis){
      var li = othis.parents('li')
      ,uid = li.data('uid')
      ,from_group = li.data('fromGroup')
      ,user = cache[uid];

      //选择分组
      parent.layui.layim.setFriendGroup({
        type: 'friend'
        ,username: user.username
        ,avatar: user.avatar
        ,group: parent.layui.layim.cache().friend //获取好友分组数据
        ,submit: function(group, index){
          
          //将好友追加到主面板
          parent.layui.layim.addList({
            type: 'friend'
            ,avatar: user.avatar //好友头像
            ,username: user.username //好友昵称
            ,groupid: group //所在的分组id
            ,id: uid //好友ID
            ,sign: user.sign //好友签名
          });
          parent.layer.close(index);
          othis.parent().html('已同意');
        
        
          //实际部署时，请开启下述注释，并改成你的接口地址
          /*
          $.post('/im/agreeFriend', {
            uid: uid //对方用户ID
            ,from_group: from_group //对方设定的好友分组
            ,group: group //我设定的好友分组
          }, function(res){
            if(res.code != 0){
              return layer.msg(res.msg);
            }

            //将好友追加到主面板
            parent.layui.layim.addList({
              type: 'friend'
              ,avatar: user.avatar //好友头像
              ,username: user.username //好友昵称
              ,groupid: group //所在的分组id
              ,id: uid //好友ID
              ,sign: user.sign //好友签名
            });
            parent.layer.close(index);
            othis.parent().html('已同意');
          });
          */
          
        }
      });
    }

    //拒绝
    ,refuse: function(othis){
      var li = othis.parents('li')
      ,uid = li.data('uid');

      layer.confirm('确定拒绝吗？', function(index){
        $.post('/im/refuseFriend', {
          uid: uid //对方用户ID
        }, function(res){
          if(res.code != 0){
            return layer.msg(res.msg);
          }
          layer.close(index);
          othis.parent().html('<em>已拒绝</em>');
        });
      });
    }
  };

  $('body').on('click', '.layui-btn', function(){
    var othis = $(this), type = othis.data('type');
    active[type] ? active[type].call(this, othis) : '';
  });
});
</script>
</body>
</html>
