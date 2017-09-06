package com.avalon.util.activiti;

import java.io.InputStream;
import java.util.List;

import org.activiti.bpmn.model.BpmnModel;
import org.activiti.engine.impl.bpmn.diagram.ProcessDiagramGenerator;
import org.activiti.engine.impl.cmd.GetBpmnModelCmd;
import org.activiti.engine.impl.interceptor.Command;
import org.activiti.engine.impl.interceptor.CommandContext;
import org.activiti.engine.impl.persistence.entity.ExecutionEntity;
import org.activiti.engine.impl.persistence.entity.ExecutionEntityManager;

/**
 * 
 * @类名: ProcessInstanceDiagramCmd
 * @功能描述:工作流获取流程图片
 * @类创建人: Evan
 * @类创建时间： 2016-10-28 下午04:16:29
 */
public class ProcessInstanceDiagramCmd implements Command<InputStream> {

	protected String processInstanceId;

    public ProcessInstanceDiagramCmd(String processInstanceId) {
        this.processInstanceId = processInstanceId;
    }
    
    
    /**
     * 获取流程图片流
     */
    public InputStream execute(CommandContext commandContext) {
        ExecutionEntityManager executionEntityManager = commandContext.getExecutionEntityManager();
        ExecutionEntity executionEntity = executionEntityManager.findExecutionById(processInstanceId);
        List<String> activiityIds = executionEntity.findActiveActivityIds();
        String processDefinitionId = executionEntity.getProcessDefinitionId();
        GetBpmnModelCmd getBpmnModelCmd = new GetBpmnModelCmd(processDefinitionId);
        BpmnModel bpmnModel = getBpmnModelCmd.execute(commandContext);
        InputStream is = ProcessDiagramGenerator.generateDiagram(bpmnModel,"png", activiityIds);
        return is;
    }

}
