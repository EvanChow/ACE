package com.avalon.service.activiti;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.DeploymentBuilder;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.avalon.log.ILog;


/**
 * 
 * @类名: ActivitiDroolsService
 * @功能描述:工作流引擎+规则引擎
 * @类创建人: Evan
 * @类创建时间： 2016-10-31 上午09:35:04
 */
@Service
public class ActivitiDroolsService implements ILog{
    
    @Autowired
    private ActivitiService activitiService;
    
    /**
     * 
     * @方法名: DroolsDeploy
     * @功能描述: 部署
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-10-31 上午10:37:51
     */
    public Deployment droolsDeploy(String[] drls,String[] bpmns){
        //获取部署实例
        DeploymentBuilder deploy=activitiService.getActivitiRepositoryService().createDeployment();
        //部署规则引擎地址
        for(String drl:drls){
            if(!"".equals(drl)){
                deploy.addClasspathResource(drl); 
               // activitiService.deploy(drl);
            }else{
                loggerError.info("规则引擎地址为空");
            }
        }
        //部署工作流引擎地址
        for(String bpmn:bpmns){
            if(!"".equals(bpmn)){
                deploy.addClasspathResource(bpmn); 
                //activitiService.deploy(bpmn);
            }else{
                loggerError.info("工作流引擎地址为空");
            }
        }
        
        return deploy.deploy();
    }
    
    
    public Map<String,Object> droolsTask(String key,Map<String, Object> vars){
        
        Map<String,Object> result=new HashMap<String,Object>();
        
        ProcessInstance pi=activitiService.getActivitiRuntimeService().startProcessInstanceByKey(key);
        List<Task> tasks =activitiService.getActivitiTaskService().createTaskQuery().processInstanceId(pi.getId()).list(); 
        /** 
         * 当前任务 
         */ 
        for(Task task : tasks){  
            loggerNormal.info("执行当前任务 ：{"+task.getId() + " , " + task.getName()+"}");  
            result.put("now","执行当前任务 ：{"+task.getId() + " , " + task.getName()+"}");
            activitiService.getActivitiTaskService().complete(task.getId(), vars);  
        }
        
        /** 
         * 下一步任务 
         */
        tasks = activitiService.getActivitiTaskService().createTaskQuery().processInstanceId(pi.getId()).list();  
        for(Task task : tasks){  
            result.put("next","下一步任务 ：{"+task.getId() + " , " + task.getName()+"}");
            loggerNormal.info("下一步任务 ：{"+task.getId() + " , " + task.getName()+"}");    
        }
        
        
        return result;
        
    }
    
    
    
    
}
