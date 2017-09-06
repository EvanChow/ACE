package com.avalon.service.jms;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.core.MessageCreator;
import org.springframework.stereotype.Service;

@Service
public class JmsTemplateService {
    
    private JmsTemplate jmsTemplate;
    
    @Autowired
    public void setJmsTempalte(JmsTemplate jmsTemplate){
        this.jmsTemplate = jmsTemplate;
    }
    
    
    /**
     * 
     * @方法名: send
     * @功能描述: 发送消息
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-12-7 下午02:36:22
     */
    public void send(final String argQueueName, final String argObject) throws JMSException {
       
        jmsTemplate.send(argQueueName, new MessageCreator() {
            public Message createMessage(Session session) throws JMSException {
                return session.createObjectMessage(argObject);
            }
        });
    }
    
    /**
     * 
     * @方法名: consumee
     * @功能描述: 接收消息
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-12-7 下午02:36:33
     */
    public Message consumee(String queueName) throws JMSException {
        Message message = jmsTemplate.receive(queueName);
        return message;
    }
    
}
