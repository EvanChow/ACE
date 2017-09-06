package com.avalon.controller.activiti;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.avalon.model.drools.Leave;
import com.avalon.service.activiti.ActivitiDroolsService;
import com.avalon.vo.Json;

@Controller
@RequestMapping("/activitidrools")
public class ActivitiDroolsCtrl {
    @Autowired
    private ActivitiDroolsService activitiDroolsService;
    
    
    @RequestMapping("/work")
    @ResponseBody
    public Json ActivitiDroolsWork(){
        Json j=new Json();
        activitiDroolsService.droolsDeploy(new String[]{"rules/act/product.drl"}, new String[]{"activiti/ppleave.bpmn"});
        int num=(int)(1+Math.random()*(100-1+1));
        Map<String, Object> vars = new HashMap<String, Object>();  
        vars.put("leave", new Leave("白展堂",num));
        Map<String,Object> data=activitiDroolsService.droolsTask("leave", vars);
        j.setData(data);
        return j;
    }
    
    
}
