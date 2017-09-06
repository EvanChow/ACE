package com.avalon.vo.im;

import org.springframework.web.socket.WebSocketSession;

import com.avalon.model.im.IMUser;

public class IMSession {
    
    private IMUser imuser;
    
    private  WebSocketSession websocketsession;
    public IMUser getImuser() {
        return imuser;
    }
    public void setImuser(IMUser imuser) {
        this.imuser = imuser;
    }
    public WebSocketSession getWebsocketsession() {
        return websocketsession;
    }
    public void setWebsocketsession(WebSocketSession websocketsession) {
        this.websocketsession = websocketsession;
    }
    
}
