package com.avalon.service.websocket.session;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

import org.springframework.stereotype.Service;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;

import com.avalon.log.ILog;
import com.avalon.model.im.IMUser;
import com.avalon.vo.im.IMSession;

@Service
public class WebSocketSessionIMOnLineService  implements ILog{
    
    private CopyOnWriteArrayList<IMSession>  websocketsessions=new CopyOnWriteArrayList<IMSession>();
    
    /**
     * 
     * @方法名: getOnline
     * @功能描述:获取在线用户
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： Apr 28, 2017 2:13:37 PM
     */
    public List<IMUser> getOnline(){
        List<IMUser> list=new ArrayList<IMUser>();
        for(IMSession session: websocketsessions){
            IMUser user=session.getImuser();
            user.setSessionid(session.getWebsocketsession().getId());
            list.add(user);
        }
        return list;
    }
    
    public IMSession getWebSocketSession(String sessionId){
        for(IMSession imsession:websocketsessions){
            String sid=imsession.getWebsocketsession().getId();
            if(sid.equals(sessionId)){
                return imsession;
            }
        }
        return null;
    }
    
    
    
    
    /**
     * 
     * @方法名: onLine
     * @功能描述: 上线
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-4-18 下午05:05:06
     */
    public void onLine(IMSession session){
        loggerNormal.info("IM用戶:"+session.getImuser().getUsername()+"上线");
        websocketsessions.add(session);
    }
    /**
     * 
     * @方法名: offLine
     * @功能描述: 下线
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-4-18 下午05:05:17
     */
    public void offLine(IMSession session){
        loggerNormal.info("IM用戶:"+session.getImuser().getUsername()+"下线");
        websocketsessions.remove(session);
    }
    
    public void offLineClose(WebSocketSession session){
        for(IMSession imsession:websocketsessions){
            if(imsession.getWebsocketsession()==session){
                loggerNormal.info("IM用戶:"+imsession.getImuser().getUsername()+"强制下线");
                websocketsessions.remove(imsession);
            }else if(session.equals(imsession.getWebsocketsession())){
                loggerNormal.info("IM用戶:"+imsession.getImuser().getUsername()+"强制下线");
                websocketsessions.remove(imsession);
            }
        }
    }
    
    /**
     * 
     * @方法名: getIMSession
     * @功能描述: 向所有用一賬戶發消息
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： Apr 1, 2017 4:24:07 PM
     */
    public List<IMSession> getIMSessionAll(String wsid){
        List<IMSession> list=new ArrayList<IMSession>();
        for(IMSession session:websocketsessions){
            if(wsid.endsWith(session.getImuser().getId())){
                list.add(session);
            }
        }
        return list;
    }
    
    public IMSession getIMSession(String wsid,WebSocketSession session){
        IMSession im=new IMSession();
        for(IMSession imsession:websocketsessions){
            if(session.equals(imsession.getWebsocketsession())&&wsid.endsWith(imsession.getImuser().getId())){
                im=imsession;
                break;
            }
        }
        return im;
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
    public void sendMessage(IMSession session,String msg){
        TextMessage textMessage = new TextMessage(msg);
        try {
            session.getWebsocketsession().sendMessage(textMessage);
            loggerNormal.info("发送给IM用戶:["+session.getImuser().getUsername()+"]");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    /**
     * 
     * @方法名: sendAllMessage
     * @功能描述: 发送给所有在线人员
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-4-18 下午05:05:38
     */
    public void sendAllMessage(String msg){
        for(IMSession session:websocketsessions){
            sendMessage(session,msg);
        }
    }
    public void sendAllMessageOutmine(String msg,String wsids){
        for(IMSession session:websocketsessions){
            if(!wsids.endsWith(session.getImuser().getId())){
                sendMessage(session,msg);
            }
            
        }
    }
}
