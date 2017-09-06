package com.avalon.service.websocket.session;

import java.io.IOException;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

import org.springframework.stereotype.Service;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;

import com.avalon.log.ILog;

/**
 * 
 * @类名: WebSocketSessionGroupService
 * @功能描述: 有状态WebSocketSession，消息类型分组
 * @类创建人: Evan
 * @类创建时间： 2016-4-19 上午11:13:51
 */
@Service
public class WebSocketSessionGroupService implements ILog{
    private ConcurrentHashMap<String,CopyOnWriteArrayList<WebSocketSession>> sessiongroup=new ConcurrentHashMap<String,CopyOnWriteArrayList<WebSocketSession>>();
    
    public  void addSession(String topic, WebSocketSession session) {
        CopyOnWriteArrayList<WebSocketSession> sessions=sessiongroup.get(topic);
        if(sessions==null){       
            loggerNormal.info("注册Topic :"+topic);
            CopyOnWriteArrayList<WebSocketSession> value=new CopyOnWriteArrayList<WebSocketSession>();
            value.add(session);
            sessiongroup.put(topic,value);
        }else{
            loggerNormal.info("登录Topic :"+topic);
            sessions.add(session);
        }
    }
    
    
    public CopyOnWriteArrayList<WebSocketSession> getSessions(String topic){
        CopyOnWriteArrayList<WebSocketSession> sessions = (CopyOnWriteArrayList<WebSocketSession>)sessiongroup.get(topic); 
        return sessions;
    }
    

    public void removeSession(String topic, WebSocketSession session) {
        CopyOnWriteArrayList<WebSocketSession> sessions = (CopyOnWriteArrayList<WebSocketSession>)sessiongroup.get(topic);
        if(sessions!=null){
            sessions.remove(sessions);
            loggerNormal.info("removeSession id"+topic);
        } 
    }

    @SuppressWarnings("unchecked")
    public void removeSession(WebSocketSession session) {
        Set  set=sessiongroup.keySet();
        for(Iterator iter= set.iterator();iter.hasNext();){
             String key = (String)iter.next();
             CopyOnWriteArrayList<WebSocketSession> sessions = (CopyOnWriteArrayList<WebSocketSession>)sessiongroup.get(key);
             sessions.remove(session);
        }
        
    }
    
    @SuppressWarnings("unchecked")
    public  void cleanSessions(){
        Set  set=sessiongroup.keySet();
        for(Iterator iter= set.iterator();iter.hasNext();){
             String key = (String)iter.next();
             CopyOnWriteArrayList<WebSocketSession> sessions = (CopyOnWriteArrayList<WebSocketSession>)sessiongroup.get(key);
             if(pdNull(sessions)){
                 sessiongroup.remove(key);
                 loggerNormal.info("注销Topic:"+key);
             }
        }
        
    }
    
    private  boolean pdNull(CopyOnWriteArrayList<WebSocketSession> sessions){
        if(sessions==null){
            return false;
        }
        if(sessions.size()==0){
            return true;
        }else{
            return false;
        }
    }
    
    
    /**
     * 
     * @方法名: sendMessage
     * @功能描述: 发送给某一个人
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-4-18 下午05:05:25
     */
    public void sendMessage(WebSocketSession session ,String msg){
        TextMessage textMessage = new TextMessage(msg);
        try {
            if(session.isOpen()){
                session.sendMessage(textMessage);
                loggerNormal.info("发送给ID="+session.getId()+"消息");
            }else{
                loggerNormal.info("session is not open");
                removeSession(session);
            }
            
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    
    
    
}
