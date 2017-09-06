package com.avalon.controller.aspect;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.avalon.pojo.stereotype.Action;
import com.avalon.vo.Json;

@Controller
public class AspectCtrl {
    
    
    
    @RequestMapping("/aspect")
    @ResponseBody
    public Json AspectTest(){
        Json j=new Json();
        
        
        return j;
    }
    
    
    
}
