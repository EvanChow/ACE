package com.avalon.controller.jms;

import javax.jms.JMSException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.avalon.service.jms.JmsTemplateService;
import com.avalon.vo.Json;

@Controller
@RequestMapping("/jms")
public class JmsCtrl {
    
    @Autowired
    private JmsTemplateService jmstemplateService;
    
    @RequestMapping("/send")
    @ResponseBody
    public Json JmsSendMsg(String msg){
        Json j=new Json();
        System.out.println("msg================>"+msg);
        try {
            jmstemplateService.send("queue", msg);
        } catch (JMSException e) {
            e.printStackTrace();
        }
        return j;
    }
    
    
}
