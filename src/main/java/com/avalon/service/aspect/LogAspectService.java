package com.avalon.service.aspect;

import org.springframework.stereotype.Service;

@Service
public class LogAspectService {
    
    
    public void showMsg(String msg){
        System.out.println(msg);
    }
    
    
}
