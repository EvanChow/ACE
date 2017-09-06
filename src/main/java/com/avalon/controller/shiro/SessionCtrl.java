package com.avalon.controller.shiro;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.eis.SessionDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.avalon.util.Constants;
import com.avalon.vo.DataGrid;
import com.avalon.vo.Json;
import com.avalon.vo.Parameter;


@Controller
@RequestMapping("/sessions")
public class SessionCtrl {
    
    @Autowired
    private SessionDAO sessionDAO;
    
    @RequestMapping("dg")
    @ResponseBody
    public DataGrid list(Parameter parameter) {
        DataGrid dg=new DataGrid();
        Collection<Session> sessions =  sessionDAO.getActiveSessions();
        List<Session> list=new ArrayList<Session>();
        for(Session session: sessions){
            session.getAttribute("");
            list.add(session);
        }
        
        int start=parameter.getiDisplayStart();
        int end=parameter.getiDisplayLength();
        
        dg.setDraw(0);
        dg.setRecordsFiltered(list.size());
        dg.setRecordsTotal(list.size());
        dg.setData(list.subList(start, (start+1)*end));
        return dg;
    }

    @RequestMapping("/{sessionId}/Logout")
    public String forceLogout(@PathVariable("sessionId") String sessionId, RedirectAttributes redirectAttributes) {
        try {
            Session session = sessionDAO.readSession(sessionId);
            if(session != null) {
                session.setAttribute(Constants.SESSION_FORCE_LOGOUT_KEY, Boolean.TRUE);
            }
        } catch (Exception e) {/*ignore*/}
        redirectAttributes.addFlashAttribute("msg", "强制退出成功！");
        return "/";
    }
    
    @RequestMapping("logout")
    @ResponseBody
    public Json Logout(String sessionId){
        Json j=new Json();
        try {
            Session session = sessionDAO.readSession(sessionId);
            if(session != null) {
                j.setSuccess(true);
                j.setMsg("强制退出成功!");
                session.setAttribute(Constants.SESSION_FORCE_LOGOUT_KEY, Boolean.TRUE);
            }else{
                j.setMsg("用户不在线!");
            }
            
        } catch (Exception e) {
            //e.printStackTrace();
            j.setMsg("强制退出失败!");
        }
        
        
        return j;
    }
    
}
