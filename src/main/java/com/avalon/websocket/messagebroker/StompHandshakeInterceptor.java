package com.avalon.websocket.messagebroker;

import java.util.Map;

import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.server.HandshakeInterceptor;

import com.avalon.log.ILog;

public class StompHandshakeInterceptor implements HandshakeInterceptor,ILog{

    public void afterHandshake(ServerHttpRequest request, ServerHttpResponse response, WebSocketHandler wsHandler,
            Exception exception) {
       
        loggerNormal.info("stomp握手后");
    }

    public boolean beforeHandshake(ServerHttpRequest request, ServerHttpResponse response, WebSocketHandler wsHandler,
            Map<String, Object> attributes) throws Exception {
        loggerNormal.info("stomp握手前");
        return true;
    }

}
