package com.avalon.controller.sys;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.avalon.model.sys.Menu;
import com.avalon.model.sys.User;
import com.avalon.service.sys.UserService;
import com.avalon.util.SysUtil;
import com.avalon.vo.DataGrid;
import com.avalon.vo.Json;
import com.avalon.vo.Parameter;

@Controller
@RequestMapping("/user")
public class UserCtrl {
    
    @Autowired
    private UserService userservice;
    
    @RequestMapping("/dg")
    @ResponseBody
    public DataGrid DataPagination(User entity,Parameter parameter){
        entity.setLimit(parameter.getiDisplayStart());//起始页
        entity.setOffset(parameter.getiDisplayLength());//偏移页
        DataGrid dg=new DataGrid();
        List<User> list=userservice.DataPagination(entity);
        int count=userservice.DataPaginationCount(entity);
        dg.setData(list);
        dg.setDraw(0);
        dg.setRecordsFiltered(count);
        dg.setRecordsTotal(count);
        return dg;
    }
    
    @RequestMapping("/add")
    @ResponseBody
    public Json addMenu(User entity){
        Json j=new Json();
        entity.setUid(SysUtil.createID("UID"));
        entity.setStatus(1);
        j.setSuccess(userservice.add(entity));
        return j;
    }
    
    @RequestMapping("/update")
    @ResponseBody
    public Json updateMenu(User entity){
        Json j=new Json();
        j.setSuccess( userservice.update(entity));
        return j;
    }
    
    @RequestMapping("/updatePage")
    public String getMenu( User entity,String jsp,HttpServletRequest request){
        request.setAttribute("entity", userservice.getOne(entity));
        return jsp;
    }
    
    @RequestMapping("/del")
    @ResponseBody
    public Json deleteMenu(User entity){
        Json j=new Json();
        j.setSuccess(userservice.del(entity));
        return j;
    }
    
    @RequestMapping("/getall")
    @ResponseBody
    public Json getAll(User entity){
        Json j=new Json();
        List<User> data=userservice.getAll(entity);
        j.setData(data);
        j.setSuccess(true);
        return j;
    }
    
    
    
}
