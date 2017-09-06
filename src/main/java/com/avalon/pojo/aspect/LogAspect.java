package com.avalon.pojo.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.avalon.service.aspect.LogAspectService;


@Aspect //该注解标示该类为切面类 
@Component //注入依赖
public class LogAspect {
    
    @Autowired
    private LogAspectService logaspectService;
    
    //Controller层切点
    @Pointcut("@annotation(com.avalon.pojo.stereotype.Action)")
    public void controllerAspect() {
        logaspectService.showMsg("Controller层切点");
    }
    
    /**
     * 
     * @方法名: doAfterThrowing
     * @功能描述: 操作异常记录
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-11-18 下午03:23:01
     */
    @AfterThrowing(pointcut = "controllerAspect()", throwing = "e") 
    public  void doAfterThrowing(JoinPoint point, Throwable e) {  
        logaspectService.showMsg("异常处理层");
    }
    
    /**
     * 
     * @方法名: doController
     * @功能描述: 前置通知 用于拦截Controller层记录用户的操作
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-11-18 下午03:23:35
     */
    @Around("controllerAspect()")
    public Object doController(ProceedingJoinPoint point) {
        Object result = null;
        
        try {
            result = point.proceed();
        } catch (Throwable e) {
            e.printStackTrace();
        }
        
        return result;
    }
    
    
//    @AfterReturning("within(com.avalon..*) && @annotation(com.avalon.pojo.stereotype.Action)")
//    public void addLogSuccess(JoinPoint jp){  
//        Object[] parames = jp.getArgs();//获取目标方法体参数  
//        System.out.println(parames);
//        String className = jp.getTarget().getClass().toString();//获取目标类名  
//        className = className.substring(className.indexOf("com"));  
//        String signature = jp.getSignature().toString();//获取目标方法签名  
//        
//        System.out.println(signature);
//    } 
    
    
}
