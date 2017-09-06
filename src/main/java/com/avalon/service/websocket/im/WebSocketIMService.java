package com.avalon.service.websocket.im;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.socket.WebSocketSession;
import com.alibaba.fastjson.JSONObject;
import com.avalon.model.im.IMGroups;
import com.avalon.model.im.IMUser;
import com.avalon.model.im.MsgLog;
import com.avalon.pojo.stereotype.Action;
import com.avalon.service.action.supper.Execute;
import com.avalon.service.im.IMMsgLogService;
import com.avalon.service.im.IMUserService;
import com.avalon.service.websocket.session.WebSocketSessionIMOnLineService;
import com.avalon.util.SysUtil;
import com.avalon.vo.im.CODE;
import com.avalon.vo.im.IMSession;
import com.avalon.vo.im.MineTo;
import com.avalon.vo.im.MineTo.Mine;
import com.avalon.vo.im.MineTo.To;
import com.avalon.vo.websocket.WSRequest;
import com.avalon.vo.websocket.WSResponse;

@Action("immsg")
public class WebSocketIMService  implements Execute{

    @Autowired
    private WebSocketSessionIMOnLineService imOnLineService;
    @Autowired
    private IMUserService imuserservice;
    
    @Autowired
    private IMMsgLogService immsglogservice;
    
    @Override
    public Object execute(WSRequest request, WebSocketSession session) {
        WSResponse response=new WSResponse();
        
        JSONObject obj=JSONObject.parseObject(request.getData());
        MineTo mt=getMT(obj,null);
        String id=mt.getMine().getId();
        if("group".equals(mt.getTo().getType())){//发给群成员
            System.out.println("发送消息到群[ID="+id+"]=>"+mt.getMine().getContent());
            IMGroups groups=new IMGroups();
            groups.setId(id);
            List<IMUser> list=imuserservice.getAllByGroups(groups);  
            response.setData(mt);
            response.setAction("immsg");
            response.setCode(CODE.SUCCESS);
            response.setDataType("json");
            response.setSuccess(true);
            response.setWsid(id);
            for(IMUser user:list){
                List<IMSession> grouplist=imOnLineService.getIMSessionAll(user.getId());
                for(IMSession one:grouplist){
                    System.out.println("发送消息到群友["+one.getImuser().getUsername()+"]=>"+mt.getMine().getContent());
                    if(!mt.getTo().getId().equals(one.getImuser().getId())){//不发送给本人
                        imOnLineService.sendMessage(one,response.toJSONString(response));
                    }
                    
                }
            }
            
        }else{//发给好友
            List<IMSession> list=imOnLineService.getIMSessionAll(id);
            System.out.println(mt.getMine().getUsername()+"发送消息给"+mt.getTo().getName());
            response.setData(mt);
            response.setAction("immsg");
            response.setCode(CODE.SUCCESS);
            response.setDataType("json");
            response.setSuccess(true);
            response.setWsid(id);
            for(IMSession one:list){
                System.out.println("发送消息到好友["+one.getImuser().getUsername()+"]=>"+mt.getMine().getContent());
                imOnLineService.sendMessage(one,response.toJSONString(response));
            }
        }
        
        return null;
    }
    
    public MineTo getMT(JSONObject obj,String type){
        MineTo mt=new MineTo();
        MineTo.Mine mine=getMine(obj.getJSONObject("mine"));
        MineTo.To to=getTo(obj.getJSONObject("to"));
        
        //记录消息日志1
        MsgLog entity=new MsgLog();
        entity.setId(SysUtil.createID("IM"));
        entity.setMineid(mine.getId());
        entity.setMinename(mine.getUsername());
        entity.setToid(to.getId());
        entity.setToname(to.getName());
        entity.setContent(mine.getContent());
        entity.setType(to.getType());
        entity.setStatus("1");
        entity.setCreatetime(new Date());
        entity.setUpdatetime(new Date());
        immsglogservice.add(entity);
        
        
        //处理消息
        mt.setMine(mine);
        mt.setTo(to);
        String id=mt.getTo().getId();
        MineTo.Mine mine1=new MineTo().getMine();
        mine1.setAvatar(to.getAvatar());
        mine1.setContent(mine.getContent());
        mine1.setId(to.getId());
        mine1.setUsername(to.getUsername());
        
        MineTo.To to1=new MineTo().getTo();
        to1.setAvatar(mine.getAvatar());
        to1.setId(mine.getId());
        to1.setName(mine.getUsername());
        //to1.setSign(list.get(0).getImuser().getSign());
        to1.setType(to.getType());
        to1.setUsername(mine.getUsername());
        mt.setMine(mine1);
        mt.setTo(to1);
        return mt;
    }
    
    
    
    private Mine getMine(JSONObject obj){
        MineTo.Mine mine=new MineTo().getMine();
        //obj.getString("")
        mine.setAvatar(obj.getString("avatar"));
        mine.setContent(obj.getString("content"));
        mine.setId(obj.getString("id"));
        mine.setUsername(obj.getString("username"));
        return mine;
    }
    
    private To getTo(JSONObject obj){
        MineTo.To to=new MineTo().getTo();
        to.setAvatar(obj.getString("avatar"));
        to.setName(obj.getString("name"));
        to.setId(obj.getString("id"));
        to.setSign(obj.getString("sign"));
        to.setType(obj.getString("type"));
        to.setUsername(obj.getString("username"));
        return to;
    }

   

}
