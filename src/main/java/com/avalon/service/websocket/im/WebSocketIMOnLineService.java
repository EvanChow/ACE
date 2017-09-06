package com.avalon.service.websocket.im;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.socket.WebSocketSession;

import com.avalon.model.im.IMUser;
import com.avalon.pojo.stereotype.Action;
import com.avalon.service.action.supper.Execute;
import com.avalon.service.im.IMUserService;
import com.avalon.service.websocket.session.WebSocketSessionIMOnLineService;
import com.avalon.vo.im.IMSession;
import com.avalon.vo.websocket.WSRequest;

@Action("imlogin")
public class WebSocketIMOnLineService implements Execute{
    
    @Autowired
    private WebSocketSessionIMOnLineService imOnLineService;
    
    @Autowired
    private IMUserService imuserservice;
    
    @Override
    public Object execute(WSRequest request, WebSocketSession session) {
        String wsid=request.getWsid();
        String dt=request.getDataType();
        String cmd=request.getData();
        
        if("login".endsWith(cmd)){
            IMUser entity=new IMUser();
             entity.setId(wsid);
             entity=imuserservice.getOne(entity);
             IMSession imsession=new IMSession();
             imsession.setImuser(entity);
             imsession.setWebsocketsession(session);
             imOnLineService.onLine(imsession);
        }else if("loginout".endsWith(cmd)){
            IMSession imsession=imOnLineService.getIMSession(wsid, session);
            imOnLineService.offLine(imsession);
        }
        return null;
    }

}
