package com.avalon.listener.shiro;

import org.apache.shiro.session.Session;
import org.apache.shiro.session.SessionListener;

public class ShiroSessionListener implements SessionListener{

    @Override
    public void onExpiration(Session session) {
        System.out.println("会话过期：" + session.getId()); 
    }

    @Override
    public void onStart(Session session) {
        System.out.println("会话创建：" + session.getId());  
    }

    @Override
    public void onStop(Session session) {
        System.out.println("退出会话：" + session.getId());  
    }

}
