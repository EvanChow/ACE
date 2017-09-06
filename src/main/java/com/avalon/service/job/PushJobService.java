package com.avalon.service.job;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Service;
import com.avalon.log.ILog;
import com.avalon.vo.Result;

@Service
public class PushJobService implements ILog{
            
//    @Autowired
//    private WebSocketSessionService onlines;
    
    @Autowired
    private SimpMessagingTemplate template;
    
    
   
    
    int count=0;
    
   // @Scheduled(fixedRate = 10000)
    public void work(){
        loggerNormal.info("+++++++++++++++++++++++++++++++++开始任务+++++++++++++++++++++++++++++++++");
        
        count++;
        
        //System.out.println("template is"+template);
        
        //定时发送订阅消息
        if(template!=null){
            template.convertAndSend("/topic/showResult",new Result(count+"+"+count+"="+(count+count)));
        }
        
        
        
        
        //onlines.sendAllMessage("count======"+count);
        loggerNormal.info("+++++++++++++++++++++++++++++++++结束任务+++++++++++++++++++++++++++++++++");
    }

   
    
}
