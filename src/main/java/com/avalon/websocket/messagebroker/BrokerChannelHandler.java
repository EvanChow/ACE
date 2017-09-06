package com.avalon.websocket.messagebroker;

import org.springframework.messaging.MessageChannel;
import org.springframework.messaging.SubscribableChannel;
import org.springframework.web.socket.messaging.SubProtocolWebSocketHandler;

public class BrokerChannelHandler extends SubProtocolWebSocketHandler{

    public BrokerChannelHandler(MessageChannel clientInboundChannel, SubscribableChannel clientOutboundChannel) {
        super(clientInboundChannel, clientOutboundChannel);
    }

}
