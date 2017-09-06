package com.avalon.websocket.handler;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.avalon.log.ILog;
import com.avalon.service.websocket.BootstrapHandlerService;


public class ChatHandler extends TextWebSocketHandler implements ILog{
	
	@Autowired
    private BootstrapHandlerService bootstrapHandlerService;
	
	@Override
	public void handleTextMessage(WebSocketSession session, TextMessage message)  throws IOException{
		String msg=message.getPayload();
		loggerNormal.info("Spring方式接受消息:"+msg);
	}
	
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws IOException{
	    loggerNormal.info("Spring方式afterConnectionEstablished");
	   // bootstrapHandlerService.afterConnectionEstablished(session);
	    
	}
	
	
	public void afterConnectionClosed(WebSocketSession session,
            CloseStatus status){
	    loggerNormal.info("Spring方式afterConnectionClosed");
	    //bootstrapHandlerService.connectionClose(session);

	}
	
}