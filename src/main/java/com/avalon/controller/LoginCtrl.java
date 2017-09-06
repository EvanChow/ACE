package com.avalon.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.DisabledAccountException;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.ExpiredCredentialsException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.UnauthorizedException;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.avalon.log.ILog;
import com.avalon.model.sys.User;
import com.avalon.service.sys.UserService;
import com.avalon.vo.Json;

@Controller
public class LoginCtrl implements ILog{
    
    @Autowired
    private UserService userservice;
	
    @RequestMapping(value = "/dologin")
    @ResponseBody
    public Json doLogin(String userName,String password){
        Json j=new Json();
        String msg = "";
        loggerNormal.info("用户登录{userName:"+userName+",password:"+password+"}");
        if("".equals(userName)){j.setMsg("用户名为空");j.setData(1);return j;};
        if("".equals(password)){j.setMsg("密码为空");j.setData(2);return j;};
        UsernamePasswordToken token = new UsernamePasswordToken(userName, password);
        token.setRememberMe(true);  
        Subject subject = SecurityUtils.getSubject();
        try {  
            subject.login(token);
            System.out.println("SESSION ID = " + subject.getSession().getId());
            System.out.println("用户名：" + subject.getPrincipal());
            System.out.println("HOST：" + subject.getSession().getHost());
            System.out.println("TIMEOUT ：" + subject.getSession().getTimeout());
            System.out.println("START：" + subject.getSession().getStartTimestamp());
            System.out.println("LAST：" + subject.getSession().getLastAccessTime());
            if (subject.isAuthenticated()) {//验证是否登录成功
                j.setSuccess(true);
                return j;
            }else {  
                j.setSuccess(false);
                j.setMsg("登录失败");
                j.setData(3);
                return j;
            }
        } catch (IncorrectCredentialsException e) {  
            msg = "登录密码错误!";  
            j.setMsg(msg);
            j.setData(2);
            //request.setAttribute("message", msg);  
            loggerNormal.info(msg+". Password for account " + token.getPrincipal() + " was incorrect.");
        } catch (ExcessiveAttemptsException e) {  
            msg = "登录失败次数过多!";  
            j.setMsg(msg);
            j.setData(2);
            loggerNormal.info(msg);
        } catch (LockedAccountException e) {  
            msg = "帐号已被锁定!";
            j.setMsg(msg);
            j.setData(1);
            loggerNormal.info(msg+".The account for username " + token.getPrincipal() + " was locked.");
        } catch (DisabledAccountException e) {  
            msg = "帐号已被禁用!";  
            j.setMsg(msg);
            j.setData(1);
            loggerNormal.info(msg+". The account for username " + token.getPrincipal() + " was disabled.");
        } catch (ExpiredCredentialsException e) {  
            msg = "帐号已过期!";  
            j.setMsg(msg);
            j.setData(1);
            loggerNormal.info(msg+". the account for username " + token.getPrincipal() + "  was expired.");
        } catch (UnknownAccountException e) {  
            msg = "帐号不存在!";  
            j.setMsg(msg);
            j.setData(1);
            loggerNormal.info(msg+". There is no user with username of " + token.getPrincipal());
        } catch (UnauthorizedException e) {  
            msg = "您没有得到相应的授权!" ;  
            j.setMsg(msg);
            j.setData(1);
            loggerNormal.info(msg+e.getMessage());
        }
        token.clear();
        return j;
    }
    
   
    @RequestMapping("/dologout")
    @ResponseBody
    public Json dologout(){
        Json j=new Json();
        Subject subject = SecurityUtils.getSubject();
        if(subject.getSession() != null){
            loggerNormal.info("用户"+subject.getPrincipal()+"退出登录SSIONID"+subject.getSession().getId());
            subject.logout(); // session 会销毁，在SessionListener监听session销毁，清理权限缓存  
            j.setSuccess(true);
            j.setMsg("用户"+subject.getPrincipal()+"退出登录SSIONID"+subject.getSession().getId());
        }else{
            j.setMsg("退出登录失败!");
        }
        return j;
    }
    
    @RequestMapping(value = "/login")
    @ResponseBody
    public Json Login(String userName,String password,HttpServletRequest request){
        Json j=new Json();
        User entity=new User();
        loggerNormal.info("用户登录{userName:"+userName+",password:"+password+"}");
        if("".equals(userName)){j.setMsg("用户名为空");j.setData(1);return j;};
        if("".equals(password)){j.setMsg("密码为空");j.setData(2);return j;};
        
        entity.setUsername(userName);
        entity.setPasswd(password);
        User user= userservice.getOne(entity);
        if(user==null){
            j.setMsg("登录失败");
            j.setData(2);
            return j;
        }else{
            request.getSession().setAttribute("USER",user);
            j.setSuccess(true);
        }
        
        return j;
    }
    
    @RequestMapping("/logout")  
    public String Logout(HttpServletRequest request){
        HttpSession session=request.getSession();
        User user=(User) session.getAttribute("USER");
        session.removeAttribute("USER");
        loggerNormal.info("用户"+user.getUsername()+"退出登录SSIONID"+session.getId());
        return "/";
    }

    
}
