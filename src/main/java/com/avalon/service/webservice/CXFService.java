package com.avalon.service.webservice;

import org.springframework.stereotype.Service;

@Service
public class CXFService {
    
    
    public void showMsg(String str){
        System.out.println("Sysout=========================>"+str);
    }
    
}
