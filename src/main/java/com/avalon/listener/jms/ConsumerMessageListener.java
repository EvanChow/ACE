package com.avalon.listener.jms;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.TextMessage;

/**
 * 
 * @类名: ConsumerMessageListener
 * @功能描述:消息接收器
 * @类创建人: Evan
 * @类创建时间： 2016-12-2 上午11:40:25
 */
public class ConsumerMessageListener implements MessageListener{

    public void onMessage(Message message) {
      //这里我们知道生产者发送的就是一个纯文本消息，所以这里可以直接进行强制转换，或者直接把onMessage方法的参数改成Message的子类TextMessage  
        TextMessage textMsg = (TextMessage) message;  
        System.out.println("接收到一个纯文本消息。");  
        try {  
            System.out.println("消息内容是：" + textMsg.getText());  
        } catch (JMSException e) {  
            e.printStackTrace();  
        } 
        
    }

}
