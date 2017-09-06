package com.avalon.controller.redis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.avalon.service.redis.RedisService;
import com.avalon.vo.Json;


@Controller
@RequestMapping("/member")
public class RedisCtrl {
    
    @Autowired
    private RedisService redisService;
   

    @RequestMapping("add")
    @ResponseBody
    public Json add(String key,String value){
        Json j=new Json();
        j.setSuccess(redisService.add(key,value));
        return j;
    }
    
    @RequestMapping("addMap")
    @ResponseBody
    public Json addMap(String key,String field,String value){
        Json j=new Json();
        j.setSuccess(redisService.addMap(key,field,value));
        return j;
    }
    
    @RequestMapping("addList")
    @ResponseBody
    public Json addList(String key,String value){
        Json j=new Json();
        j.setSuccess(redisService.addList(key,value));
        return j;
    }
    
    @RequestMapping("get")
    @ResponseBody 
    public Json get(String key){
        Json j=new Json(); 
        j.setSuccess(true);
        j.setMsg(redisService.get(key));
        return j;
    }
    
    
    
    @RequestMapping("del")
    @ResponseBody 
    public Json Delete(String key){
        Json j=new Json(); 
        j.setSuccess(true);
        redisService.delete(key);
        j.setMsg("删除key="+key);
        return j;
    } 
    
    
    
    
}
