package com.avalon.service.action.supper;


import org.springframework.web.socket.WebSocketSession;

import com.avalon.vo.websocket.WSRequest;

public interface Execute {
    Object execute(WSRequest request,WebSocketSession session);
}
