package com.avalon.websocket.messagebroker;

import java.util.Map;

import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.server.HandshakeFailureException;
import org.springframework.web.socket.server.HandshakeHandler;

import com.avalon.log.ILog;

public class StompHandshakeHandler implements HandshakeHandler,ILog{

    public boolean doHandshake(ServerHttpRequest request, ServerHttpResponse response, WebSocketHandler wsHandler,
            Map<String, Object> attributes) throws HandshakeFailureException {
        
        loggerNormal.info("request="+request.toString());
        loggerNormal.info("response="+response.toString());
        loggerNormal.info("wsHandler="+wsHandler.toString());
        loggerNormal.info("attributes="+attributes.toString());
        
        return true;
    }

}
