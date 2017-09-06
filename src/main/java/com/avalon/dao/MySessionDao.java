package com.avalon.dao;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.apache.shiro.session.Session;
import org.apache.shiro.session.UnknownSessionException;
import org.apache.shiro.session.mgt.eis.AbstractSessionDAO;

import com.avalon.log.ILog;

public class MySessionDao extends AbstractSessionDAO implements ILog{
    
    private Map<Serializable,Session> map = new HashMap<Serializable,Session>();

    
    @Override
    protected Serializable doCreate(Session session) {
        loggerDao.info("now doCreate session");
        Serializable sessionId = generateSessionId(session);
            assignSessionId(session, sessionId);
            map.put(sessionId, session);
         
           return sessionId;
    }

    @Override
    protected Session doReadSession(Serializable sessionId) {
        loggerDao.info("now doReadSession session");
        if(map.get(sessionId)==null){
            return null;
        }
        return map.get(sessionId);
    }

    @Override
    public void delete(Session session) {
        loggerDao.info("now delete session");
        map.remove(session.getId());
    }

    @Override
    public Collection<Session> getActiveSessions() {
        loggerDao.info("now getActiveSessions session");
        return map.values();
    }

    @Override
    public void update(Session session) throws UnknownSessionException {
        loggerDao.info("now update session");
        map.put(session.getId(),session);
    }

}
