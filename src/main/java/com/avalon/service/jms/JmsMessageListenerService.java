package com.avalon.service.jms;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class JmsMessageListenerService {
    
    @Autowired
    private JmsMessageService jmsmessageService;
    
    public void onMessage(String message) {
        jmsmessageService.onMessage(message);
    }
}
