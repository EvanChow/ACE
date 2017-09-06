package com.avalon.webservice.soap;

import javax.jws.WebService;

import org.springframework.beans.factory.annotation.Autowired;

import com.avalon.log.ILog;
import com.avalon.service.webservice.CXFService;
import com.avalon.webservice.soap.impl.SoapImpl;

@WebService(endpointInterface = "com.avalon.webservice.soap.impl.SoapImpl")
public class SoapController implements SoapImpl,ILog{
    
    @Autowired
    private CXFService cxfservice;
    
    
    public String sayHi(String xml) {
       loggerNormal.info("Hello Word !");
       cxfservice.showMsg("<xml>Hello Word !"+xml+"</xml>");
        return "<xml>Hello Word !"+xml+"</xml>";
    }
    
    public String sayHello(String xml) {
        loggerNormal.info("Hello Word !");
        cxfservice.showMsg("<xml>你好，世界!"+xml+"</xml>");
        return "<xml>你好，世界!"+xml+"</xml>";
     }

}
