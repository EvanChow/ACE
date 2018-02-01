package com.avalon.service.activiti;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.activiti.engine.FormService;
import org.activiti.engine.HistoryService;
import org.activiti.engine.IdentityService;
import org.activiti.engine.ManagementService;
import org.activiti.engine.ProcessEngine;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.impl.cmd.GetDeploymentProcessDiagramCmd;
import org.activiti.engine.impl.interceptor.Command;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.avalon.log.ILog;
import com.avalon.service.sys.SysLogService;
import com.avalon.util.activiti.ActivitiUtil;
import com.avalon.util.activiti.ProcessInstanceDiagramCmd;

/**
 * 
 * @类名: ActivitiService
 * @功能描述:工作流引擎
 * @类创建人: Evan
 * @类创建时间： 2016-10-31 上午09:35:32
 */
@Service
public class ActivitiService implements ILog{
    /**
     * Activiti工作流 全局
     */
//    @Resource
//    private RepositoryService repositoryService;
//    
//    @Resource
//    private RuntimeService runtimeService;
//    
//    @Resource
//    private TaskService taskService;
//    
//    @Resource
//    private ManagementService managementService;
    
    @Resource
    private ProcessEngine engine;
    
    
    @Autowired
    private SysLogService syslogService;
    
    /**
     * 
     * @方法名: getActivitiFormService
     * @功能描述: 
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-10-31 上午09:53:39
     */
    public FormService getActivitiFormService(){
       return this.engine.getFormService();
    }
    
    public HistoryService getActivitiHistoryService(){
        return this.engine.getHistoryService();
    }
    
    public IdentityService getActivitiIdentityService(){
        return this.engine.getIdentityService();
    }
    
    public ManagementService getActivitiManagementService(){
        return this.engine.getManagementService();
    }
    
    /**
     * 
     * @方法名: getActivitiRepositoryService
     * @功能描述: 获取部署服务类
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-10-31 上午10:02:57
     */
    public RepositoryService getActivitiRepositoryService(){
        return this.engine.getRepositoryService();
    }
    
    /**
     * 
     * @方法名: getActivitiRuntimeService
     * @功能描述: 获取
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-10-31 上午10:03:10
     */
    public RuntimeService getActivitiRuntimeService(){
        return this.engine.getRuntimeService();
    }
    
    /**
     * 
     * @方法名: getActivitiTaskService
     * @功能描述: 获取任务服务类
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-10-31 上午10:02:38
     */
    public TaskService getActivitiTaskService(){
        return this.engine.getTaskService();
    }
    
    public String getActivitiName(){
        return this.engine.getName();
    }
    
    
    /**
     * 
     * @方法名: getList
     * @功能描述: 获取文件列表
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-10-28 下午04:29:35
     */
    public List<String> getFileList(String path){
        List<String> list=new ArrayList<String>();
        if(path==null){
            return list;
        }
        String[] lists=ActivitiUtil.listRoot(path);
        for(String pt:lists){
            list.add(pt); 
        }
        return list;
    }
    
    /**
     * 
     * @方法名: deploy
     * @功能描述: 部署某个工作流
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-10-28 下午04:40:01
     */
    public void deploy(String processName){
        //List<ProcessDefinition> list=new ArrayList<ProcessDefinition>();
        if (null != processName){
            //部署某个
            getActivitiRepositoryService().createDeployment().addClasspathResource(processName).deploy();
            //获取列表
            //list=deployedList();
        }

    }
    
    /**
     * 
     * @方法名: deployed
     * @功能描述: 获得已经部署的工作流
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-10-28 下午04:43:20
     */
    public List<ProcessDefinition> deployedList(){
        List<ProcessDefinition> list=getActivitiRepositoryService().createProcessDefinitionQuery().list();
        return list;
    }
    
    /**
     * 
     * @方法名: startById
     * @功能描述: 根据id启动某个实例
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-10-28 下午04:47:13
     */
    public List<ProcessInstance> startById(String id){
        getActivitiRuntimeService().startProcessInstanceById(id);
        return getActivitiRuntimeService().createProcessInstanceQuery().list();
    }
    
    /**
     * 
     * @方法名: startByKey
     * @功能描述: 根据Key启动某个实例
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-10-28 下午04:49:37
     */
    public List<ProcessInstance> startByKey(String key){
        getActivitiRuntimeService().startProcessInstanceByKey(key);
        return getActivitiRuntimeService().createProcessInstanceQuery().list();
    }
    
    /**
     * 
     * @方法名: task
     * @功能描述: 获取进入任务列表 
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-10-28 下午04:54:51
     */
    public List<Task> task(){
        return getActivitiTaskService().createTaskQuery().list();
    }
    
    /**
     * 
     * @方法名: complete
     * @功能描述: 完成当前任务节点 
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-10-28 下午04:56:41
     */
    public void complete(String id){
        getActivitiTaskService().complete(id);
    }
    
    /**
     * 
     * @方法名: flowchart
     * @功能描述: 所有已启动流程实例流程图
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-10-28 下午04:58:47
     */
    public void flowchart(String definitionId, String instanceId,String taskId,HttpServletResponse response){
        Command<InputStream> cmd = null;
        if (definitionId != null) {//已经部署的工作流程图
            cmd = new GetDeploymentProcessDiagramCmd(definitionId);
        }
        if (instanceId != null) {//启动中的工作流程图
            cmd = new ProcessInstanceDiagramCmd(instanceId);
        }
        if (taskId != null) {//任务中的流程图
            Task task = getActivitiTaskService().createTaskQuery().taskId(taskId).singleResult();
            cmd = new ProcessInstanceDiagramCmd(task.getProcessInstanceId());
        }
        OutputImage(response,cmd);
    }
    
    /**
     * 
     * @方法名: flowchartDefinitionId
     * @功能描述: 已经部署的工作流程图
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-10-28 下午05:27:55
     */
    public void flowchartDefinitionId(String definitionId,HttpServletResponse response){
        flowchart(definitionId,null,null,response);
    }
    /**
     * 
     * @方法名: flowchartInstanceId
     * @功能描述: 启动中的工作流程图
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-10-28 下午05:27:58
     */
    public void flowchartInstanceId(String instanceId,HttpServletResponse response){
        flowchart(null,instanceId,null,response); 
    }
    
    /**
     * 
     * @方法名: flowchartTaskId
     * @功能描述: 任务中的流程图
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-10-28 下午05:28:02
     */
    public void flowchartTaskId(String taskId,HttpServletResponse response){
        flowchart(null,null,taskId,response);
    }
    
    
    
    /**
     * 
     * @方法名: OutputImage
     * @功能描述: 输出图片流
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-10-28 下午05:11:30
     */
    private void OutputImage(HttpServletResponse response,Command<InputStream> cmd){
        response.setContentType("image/png");
      //获取图片流
        if (cmd != null) {
            try {
                InputStream is = getActivitiManagementService().executeCommand(cmd);
                int len = 0;
                byte[] b = new byte[1024];
                while ((len = is.read(b, 0, 1024)) != -1) {
                   response.getOutputStream().write(b, 0, len);
                } 
            }catch (IOException e) {
                e.printStackTrace();
                loggerError.info("IO流异常...");
            }
        }
        
    }
}
