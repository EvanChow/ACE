package com.avalon.controller.sys;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.avalon.model.sys.Depart;
import com.avalon.model.sys.Group;
import com.avalon.service.sys.GroupService;
import com.avalon.util.SysUtil;
import com.avalon.vo.DataGrid;
import com.avalon.vo.Json;
import com.avalon.vo.Parameter;

@Controller
@RequestMapping("/group")
public class GroupCtrl {
    @Autowired
    private GroupService Groupservice;
    
    @RequestMapping("/dg")
    @ResponseBody
    public DataGrid DataPagination(Group entity,Parameter parameter){
        entity.setLimit(parameter.getiDisplayStart());//起始页
        entity.setOffset(parameter.getiDisplayLength());//偏移页
        DataGrid dg=new DataGrid();
        List<Group> list=Groupservice.DataPagination(entity);
        int count=Groupservice.DataPaginationCount(entity);
        dg.setData(list);
        dg.setDraw(0);
        dg.setRecordsFiltered(count);
        dg.setRecordsTotal(count);
        return dg;
    }
    
    @RequestMapping("/add")
    @ResponseBody
    public Json addMenu(Group entity){
        Json j=new Json();
        entity.setGroupid(SysUtil.createID("GID"));
        entity.setStatus(1);
        j.setSuccess(Groupservice.add(entity));
        return j;
    }
    
    @RequestMapping("/update")
    @ResponseBody
    public Json updateMenu(Group entity){
        Json j=new Json();
        j.setSuccess( Groupservice.update(entity));
        return j;
    }
    
    @RequestMapping("/updatePage")
    public String getMenu( Group entity,String jsp,HttpServletRequest request){
        request.setAttribute("entity", Groupservice.getOne(entity));
        return jsp;
    }
    
    @RequestMapping("/del")
    @ResponseBody
    public Json deleteMenu(Group entity){
        Json j=new Json();
        j.setSuccess(Groupservice.del(entity));
        return j;
    }
    
    @RequestMapping("/getall")
    @ResponseBody
    public Json getAll(Group entity){
        Json j=new Json();
        List<Group> data=Groupservice.getAll(entity);
        j.setData(data);
        j.setSuccess(true);
        return j;
    }
    
    
}
