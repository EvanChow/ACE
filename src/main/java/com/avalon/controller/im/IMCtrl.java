package com.avalon.controller.im;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.avalon.model.im.IMGroups;
import com.avalon.model.im.IMResult;
import com.avalon.service.im.InitIMService;

@Controller
@RequestMapping("/im")
public class IMCtrl {
    
    @Autowired
    private InitIMService initimservice;
    
    
    
    @RequestMapping("/getList")
    @ResponseBody
    public IMResult getList(String uid){
        IMResult result=new IMResult();
        result.setData(initimservice.getList(uid));
        return result;
    }
    
    @RequestMapping("/getMembers")
    @ResponseBody
    public IMResult getMembers(String id){
        IMResult result=new IMResult();
        IMGroups groups=new IMGroups();
        groups.setId(id);
        result.setData(initimservice.getMembers(groups));
        return result;
    }
    
    
}
