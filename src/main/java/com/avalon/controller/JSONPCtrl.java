package com.avalon.controller;

import javax.servlet.http.HttpServlet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.avalon.vo.Json;
import com.fasterxml.jackson.databind.util.JSONPObject;

@Controller
@RequestMapping("/jsonp")
public class JSONPCtrl extends HttpServlet {

    /**
     * $.ajax({  
           url:'http://192.168.5.117:8080/Avalon/jsonp/autoJsonp.do',  
           type: "get",  
           async: false,  
           dataType: "jsonp",  
           jsonp: "callbackparam", //服务端用于接收callback调用的function名的参数
           jsonpCallback: "success_jsonpCallback", //callback的function名称,服务端会把名称和data一起传递回来
           success: function(json) {  
            console.log(json);  
           },  
           error: function(){alert('Error');}  
   }); 
     */
    private static final long serialVersionUID = 4552773710306712643L;
    
    /**
     * 
     * @方法名: getJsonp
     * @功能描述: jsonp跨域访问
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-4-20 下午03:08:51
     */
    @RequestMapping("/getJsonp")  
    @ResponseBody  
    public JSONPObject getJsonp(String callbackparam){  
        Json json=new Json();  
        json.setMsg("测试jsonp");
        json.setSuccess(true);
     return new JSONPObject(callbackparam, json);   
    }
    
    /**
     * 
     * @方法名: autoJsonP
     * @功能描述: 自动选择jsonp跨越访问
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-4-20 下午03:09:15
     */
    @RequestMapping("/autoJsonp")  
    @ResponseBody
    public Object autoJsonP(String callbackparam){
        Json json=new Json();  
        json.setMsg("测试jsonp");
        json.setSuccess(true);
        if(callbackparam==null){
           return json; 
        }else{
            return new JSONPObject(callbackparam, json);   
        }
    }
    
    /**
     * 
     * @方法名: getJson
     * @功能描述: 同源访问
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-4-20 下午03:09:45
     */
    @RequestMapping("/getJson")  
    @ResponseBody 
    public Json getJson(){
        Json json=new Json();  
        json.setMsg("测试json");
        json.setSuccess(true);
        
        return json;
    }
    

}
