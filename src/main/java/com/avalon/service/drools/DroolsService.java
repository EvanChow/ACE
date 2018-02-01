package com.avalon.service.drools;

import org.activiti.engine.delegate.DelegateExecution;
import org.activiti.engine.delegate.JavaDelegate;
import org.springframework.beans.factory.annotation.Autowired;

import com.avalon.service.sys.SysLogService;

public class DroolsService implements JavaDelegate{
    
    @Autowired
    private SysLogService syslogService;
    
    public void execute(DelegateExecution execution) throws Exception {
        System.out.println("++++++++++++++++++++++++++++++++++++++");
        System.out.println(execution.getVariable("reason"));
        System.out.println("++++++++++++++++++++++++++++++++++++++");
        
    }

}
