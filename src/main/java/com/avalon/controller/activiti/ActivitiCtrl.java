package com.avalon.controller.activiti;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.impl.cmd.GetDeploymentProcessDiagramCmd;
import org.activiti.engine.impl.interceptor.Command;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.avalon.service.activiti.ActivitiService;
import com.avalon.util.activiti.ActivitiUtil;
import com.avalon.util.activiti.ProcessInstanceDiagramCmd;
import com.avalon.vo.Json;

@Controller
@RequestMapping("/activiti")
public class ActivitiCtrl {
    
    /**
     * 工作流全局实例
     */
   @Autowired
   private ActivitiService activitiservice;
    
    /**
     * 
     * @方法名: ActivitiList
     * @功能描述: 工作流列表
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-7-7 下午04:01:11
     */
    @RequestMapping("/list")
    @ResponseBody
    public Json ActivitiList(){
        Json j=new Json();
        j.setSuccess(true);
        j.setData(ActivitiUtil.list());
        return j;
    }
    /**
     * 
     * @方法名: ActivitiDeploy
     * @功能描述:  部署流程
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： Mar 31, 2017 10:11:59 AM
     */
    @RequestMapping("/deploy")
    @ResponseBody
    public Json ActivitiDeploy(String processName){
        Json j=new Json();
        RepositoryService service = activitiservice.getActivitiRepositoryService();
        if (null != processName){
            j.setSuccess(true);
            service.createDeployment().addClasspathResource("diagrams/" + processName).deploy();
            List<ProcessDefinition> list = service.createProcessDefinitionQuery().list();
            j.setData(list);
        }else{
            j.setSuccess(false);
        }
        return j;
    }
    
    /**
     * 
     * @方法名: ActivitiDeployed
     * @功能描述: 已部署流程列表
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： Mar 31, 2017 10:13:12 AM
     */
    @RequestMapping("/deployed")
    @ResponseBody
    public Json ActivitiDeployed(){
        Json j=new Json();
        RepositoryService service = activitiservice.getActivitiRepositoryService();
        List<ProcessDefinition> list = service.createProcessDefinitionQuery().list();
        j.setSuccess(true);
        j.setData(list);
        return j;
    }
    
    /**
     * 
     * @方法名: ActivitiStart
     * @功能描述: 启动一个流程实例
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： Mar 31, 2017 10:18:06 AM
     */
    @RequestMapping("/start")
    @ResponseBody
    public Json ActivitiStart(String id){
        Json j=new Json();
        RuntimeService service=activitiservice.getActivitiRuntimeService();
        service.startProcessInstanceById(id);
        List<ProcessInstance> list = service.createProcessInstanceQuery().list();
        j.setSuccess(true);
        j.setData(list);
        return j;
    }
    
    /**
     * 
     * @方法名: ActivitiStarted
     * @功能描述: 所有已启动流程实例
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： Mar 31, 2017 10:18:15 AM
     */
    @RequestMapping("/started")
    @ResponseBody
    public Json ActivitiStarted(String id){
        Json j=new Json();
        RuntimeService service=activitiservice.getActivitiRuntimeService();
        List<ProcessInstance> list = service.createProcessInstanceQuery().list();
        j.setSuccess(true);
        j.setData(list);
        return j;
    }
    
    /**
     * 
     * @方法名: ActivitiTask
     * @功能描述: 进入任务列表 
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： Mar 31, 2017 10:20:02 AM
     */
    @RequestMapping("/task")
    @ResponseBody
    public Json ActivitiTask(){
        Json j=new Json();
        TaskService service=activitiservice.getActivitiTaskService();
        List<Task> list=service.createTaskQuery().list();
        j.setSuccess(true);
        j.setData(list);
        return j;
    }
    
    /**
     * 
     * @方法名: ActivitiComplete
     * @功能描述: 完成当前节点 
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： Mar 31, 2017 10:21:23 AM
     */
    @RequestMapping("/complete")
    @ResponseBody
    public Json ActivitiComplete(String id){
        Json j=new Json();
        TaskService service=activitiservice.getActivitiTaskService();
        service.complete(id);
        j.setSuccess(true);
        return j;
    }
    
    @RequestMapping("graphics")
    public void graphics(String definitionId, String instanceId,String taskId,
            ModelAndView mav, HttpServletResponse response)throws IOException {
        response.setContentType("image/png");
        Command<InputStream> cmd = null;
        if (definitionId != null) {
            cmd = new GetDeploymentProcessDiagramCmd(definitionId);
        }
        if (instanceId != null) {
            cmd = new ProcessInstanceDiagramCmd(instanceId);
        }
        if (taskId != null) {
            Task task = activitiservice.getActivitiTaskService().createTaskQuery().taskId(taskId).singleResult();
            cmd = new ProcessInstanceDiagramCmd(task.getProcessInstanceId());
        }
        if (cmd != null) {
            InputStream is = activitiservice.getActivitiManagementService().executeCommand(cmd);
            int len = 0;

            byte[] b = new byte[1024];

            while ((len = is.read(b, 0, 1024)) != -1) {

                response.getOutputStream().write(b, 0, len);

            }

        }

    }
    
    
    
    
    
}
