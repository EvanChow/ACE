package com.avalon.service.jms;

import org.springframework.stereotype.Service;

@Service
public class JmsMessageService {
    
    
    public void onMessage(String message){
        System.out.println("JmsMessageListenerService通过onMessage接收到一个纯文本消息，消息内容是："+message);
    }
    
}
