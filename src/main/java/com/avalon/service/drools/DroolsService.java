package com.avalon.service.drools;

import org.activiti.engine.delegate.DelegateExecution;
import org.activiti.engine.delegate.JavaDelegate;

public class DroolsService implements JavaDelegate{

    public void execute(DelegateExecution execution) throws Exception {
        System.out.println("++++++++++++++++++++++++++++++++++++++");
        System.out.println(execution.getVariable("reason"));
        System.out.println("++++++++++++++++++++++++++++++++++++++");
        
    }

}
