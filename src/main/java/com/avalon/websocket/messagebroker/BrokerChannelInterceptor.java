package com.avalon.websocket.messagebroker;

import org.springframework.messaging.Message;
import org.springframework.messaging.MessageChannel;
import org.springframework.messaging.simp.stomp.StompHeaderAccessor;
import org.springframework.messaging.support.ChannelInterceptorAdapter;

import com.avalon.log.ILog;


public class BrokerChannelInterceptor extends ChannelInterceptorAdapter implements ILog{
    @Override
    public Message<?> preSend(Message<?> message, MessageChannel channel) {
      //StompHeaderAccessor accessor = StompHeaderAccessor.wrap(message);
      loggerNormal.info("BrokerChannelInterceptor......................................"+message.toString());
      //StompCommand command = accessor.getStompCommand();
      
      return message;
    }
}
