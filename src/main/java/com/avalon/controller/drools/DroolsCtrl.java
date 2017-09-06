package com.avalon.controller.drools;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.avalon.model.drools.Vip;
import com.avalon.service.drools.DroolsTniServiceImpl;
import com.avalon.vo.Json;

@Controller
@RequestMapping("drool")
public class DroolsCtrl {
    
    
    @Autowired
    private DroolsTniServiceImpl droolsTniServiceImpl;
    
    
    @RequestMapping("login")
    @ResponseBody
    public Json Login(){
        Json j=new Json();
        Vip vip=new Vip();
        vip.setName("Evan");
        vip.setPassword("");
        j.setData(droolsTniServiceImpl.test());
        return j;
    }
    
    @RequestMapping("login2")
    @ResponseBody
    public Json LoginLess(){
        Json j=new Json();
        Vip vip=new Vip();
        vip.setName("Avalon");
        vip.setPassword("");
        j.setData(droolsTniServiceImpl.commd());
        return j;
    }
    
    
}
