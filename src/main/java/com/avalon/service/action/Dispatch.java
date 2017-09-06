package com.avalon.service.action;


import org.springframework.stereotype.Component;
import org.springframework.web.socket.WebSocketSession;


import com.alibaba.fastjson.JSONObject;
import com.avalon.service.action.supper.Execute;
import com.avalon.util.SpringWiredBean;
import com.avalon.vo.websocket.WSRequest;

@Component
public class Dispatch {
    
    public void execute(WebSocketSession session, StringBuffer sb) { 
        WSRequest request=new WSRequest();
        try{
            JSONObject obj=JSONObject.parseObject(sb.toString());
            request.setUrl(obj.getString("url"));
            request.setDataType(obj.getString("dataType"));
            request.setWsid(obj.getString("wsid"));
            request.setData(obj.getString("data"));
        }catch (Exception e) {
        }
        String url=request.getUrl();
        Execute execute=(Execute) SpringWiredBean.getInstance().getBeanById(url);  
        execute.execute(request, session);
    }
}
