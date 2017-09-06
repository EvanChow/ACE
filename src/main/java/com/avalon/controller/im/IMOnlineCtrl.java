package com.avalon.controller.im;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.socket.WebSocketSession;

import com.avalon.model.im.IMUser;
import com.avalon.service.websocket.session.WebSocketSessionIMOnLineService;
import com.avalon.vo.DataGrid;
import com.avalon.vo.Json;
import com.avalon.vo.Parameter;
import com.avalon.vo.im.CODE;
import com.avalon.vo.im.IMSession;
import com.avalon.vo.websocket.WSResponse;

@Controller
@RequestMapping("/imonline")
public class IMOnlineCtrl {
    
    @Autowired
    private WebSocketSessionIMOnLineService imonlineservice;
    
    @RequestMapping("dg")
    @ResponseBody
    public DataGrid getOnline(Parameter parameter){
        DataGrid dg=new DataGrid();
        List<IMUser> list=imonlineservice.getOnline();
        int start=parameter.getiDisplayStart();
        int end=parameter.getiDisplayLength();
        int ends=(start+1)*end;
        if(ends>list.size()){ends=list.size();};
        dg.setData(list.subList(start,ends));
        dg.setDraw(0);
        dg.setRecordsFiltered(list.size());
        dg.setRecordsTotal(list.size());
        return dg;
    }
    
    @RequestMapping("logout")
    @ResponseBody
    public Json Logout(String sessionid){
        Json j=new Json();
        IMSession session=imonlineservice.getWebSocketSession(sessionid);
        if(session!=null){
            imonlineservice.offLineClose(session.getWebsocketsession());//下线
            
            WSResponse response=new WSResponse();
//            response.setData("您被管理员["+SecurityUtils.getSubject().getPrincipal()+"]强制下线!");
            response.setAction("EXIT");
            response.setCode(CODE.EXIT);
            response.setDataType("json");
            response.setSuccess(true);
            response.setWsid(session.getImuser().getId());
            
            imonlineservice.sendMessage(session,response.toJSONString(response));
            j.setSuccess(true);
            j.setMsg("强制下线成功!");
        }else{
            j.setMsg("强制下线失败!");
        }
        return j;
    } 
    
    
    
    
}
