package com.avalon.service.websocket;
import com.avalon.log.ILog;
import org.springframework.stereotype.Service;
import org.springframework.web.socket.WebSocketSession;

import com.avalon.service.action.Dispatch;
import com.avalon.service.websocket.session.WebSocketSessionIMOnLineService;
import com.avalon.service.websocket.session.WebSocketSessionService;

import org.springframework.beans.factory.annotation.Autowired;


@Service
public class BootstrapHandlerService implements ILog{
	
    
    @Autowired
    private WebSocketSessionService onlineService;
    
    @Autowired
    private WebSocketSessionIMOnLineService imonlineService;
    
    
    @Autowired
    private Dispatch dispatch;
    
    
    public void afterConnectionEstablished(WebSocketSession session){
        onlineService.onLine(session);
    }
    
    
	public void handleMessage(WebSocketSession session,StringBuffer sb){
	    loggerNormal.info("请求分发"+sb);
	    dispatch.execute(session, sb); 
	}
	
	public void handleError(WebSocketSession session, Throwable throwable){	
		loggerNormal.info("异常结束");
	}
	
	public void connectionClose(WebSocketSession session){
		loggerNormal.info("连接关闭");
		onlineService.offLine(session);
		
		imonlineService.offLineClose(session);
		loggerNormal.info("清空 onlines sessionID"+session.getId());
	}
	
	//一旦HTTP认证成功 这个方法先被调用 如果返回true 则进行上面那么N多方法的流程。如果返回的是false就直接拦截掉了。不会调用上面那些方法了！！
    //就好像个构造器一样。这个是处理器 BootstrapHandler的构造器~
	public boolean supportsPartialMessages() {
        
       return true;
   }
	
	
}
