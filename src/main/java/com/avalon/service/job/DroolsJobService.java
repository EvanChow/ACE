package com.avalon.service.job;

import java.util.Map;
import java.util.HashMap;
import com.avalon.model.drools.Leave;
import org.springframework.stereotype.Service;
import com.avalon.service.activiti.ActivitiDroolsService;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.beans.factory.annotation.Autowired;

@Service
public class DroolsJobService {
    

    @Autowired
    private ActivitiDroolsService activitiDroolsService;

    
    /**
     * 
     * @方法名: DroolsWork
     * @功能描述: 工作JOb
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-10-25 上午11:09:09
     */
    //@Scheduled(fixedRate = 10000)
    public void DroolsWork(){      
    /**
     * 注意这里：必须要把drl文件一起deploy
     * 加载工作流文件和规则引擎文件
     */
      activitiDroolsService.droolsDeploy(new String[]{"rules/product.drl"}, new String[]{"activiti/ppleave.bpmn"});
      int num=(int)(1+Math.random()*(100-1+1));
      Map<String, Object> vars = new HashMap<String, Object>();  
      vars.put("leave", new Leave("白展堂",num));
      activitiDroolsService.droolsTask("leave", vars);
    }
    
    
}
