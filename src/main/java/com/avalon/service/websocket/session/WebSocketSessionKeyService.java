package com.avalon.service.websocket.session;

import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.springframework.stereotype.Service;
import org.springframework.web.socket.WebSocketSession;

import com.avalon.log.ILog;

/**
 * 
 * @类名: WebSocketSessionKeyService
 * @功能描述:有状态WebSocketSession，绑定到个人ID
 * @类创建人: Evan
 * @类创建时间： 2016-4-19 上午11:13:10
 */
@Service
public class WebSocketSessionKeyService implements ILog{
    
    private ConcurrentHashMap<String,WebSocketSession> sessionkey=new ConcurrentHashMap<String,WebSocketSession>();
    
    public void addWebSocketSession(String key,WebSocketSession session){
        sessionkey.put(key, session);
        loggerNormal.info("ID="+session.getId()+"---------addWebSocketSession");
    }
    
    public void removeWebSocketSession(String key){
        sessionkey.remove(key);
        loggerNormal.info("ID="+key+"---------removeWebSocketSession");
    }
    
    public void removeWebSocketSession(String key,WebSocketSession session){
        sessionkey.remove(key);
        loggerNormal.info("ID="+key+"---------removeWebSocketSession");
    }
    
    @SuppressWarnings("unchecked")
    public void removeWebSocketSession(WebSocketSession session){
        Set set=sessionkey.keySet();
        for(Iterator iter= set.iterator();iter.hasNext();){
             String key = (String)iter.next();
             WebSocketSession one = (WebSocketSession)sessionkey.get(key); 
             if(session.equals(one)){
                 loggerNormal.info("退出： "+key+"");
             }
        } 
    }
        
    
}
