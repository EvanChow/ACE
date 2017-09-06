package com.avalon.service.drools;
import javax.annotation.Resource;

import org.kie.api.command.Command;
import org.kie.api.runtime.KieSession;
import org.kie.internal.command.CommandFactory;
import org.kie.internal.runtime.StatelessKnowledgeSession;
import org.springframework.stereotype.Service;

import com.avalon.model.drools.Message;

@Service
public class DroolsTniServiceImpl{
    
    @Resource(name = "ksessionStateless")
    private StatelessKnowledgeSession statelessKnowledgeSession;
    
    @Resource(name = "kieSession")//注： 这里的值与配置文件中的值是一样的  
    private KieSession  kieSession;
    
    public Message test(){
        Message message = new Message();
        message.setMessage("Hello World");
        message.setStatus(Message.HELLO);
        System.out.println(kieSession);
        kieSession.insert(message);
        int allcount=kieSession.fireAllRules();
        System.out.println("共执行了"+allcount+"次规则");
        
        return message;
    }
    
    
    public Message commd(){
        Message message = new Message();
        message.setMessage("Hello World");
        message.setStatus(Message.GOODBYE);
        Command command1 = CommandFactory.newInsert(message);
        statelessKnowledgeSession.execute(command1);
        return message;
    }
    
    
    
    
    
    
}
