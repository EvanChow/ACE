package com.avalon.controller.im;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.avalon.model.im.IMGroups;
import com.avalon.service.im.IMGroupsService;
import com.avalon.util.SysUtil;
import com.avalon.vo.DataGrid;
import com.avalon.vo.Json;
import com.avalon.vo.Parameter;

@Controller
@RequestMapping("/imgroups")
public class IMGroupsCtrl {
    @Autowired
    private IMGroupsService imgroupsservice;
    
    @RequestMapping("/dg")
    @ResponseBody
    public DataGrid DataPagination(IMGroups entity,Parameter parameter){
        entity.setLimit(parameter.getiDisplayStart());//起始页
        entity.setOffset(parameter.getiDisplayLength());//偏移页
        DataGrid dg=new DataGrid();
        List<IMGroups> list=imgroupsservice.DataPagination(entity);
        int count=imgroupsservice.DataPaginationCount(entity);
        dg.setData(list);
        dg.setDraw(0);
        dg.setRecordsFiltered(count);
        dg.setRecordsTotal(count);
        return dg;
    }
    
    @RequestMapping("/add")
    @ResponseBody
    public Json addMenu(IMGroups entity){
        Json j=new Json();
        entity.setId(SysUtil.createID("IM"));
        j.setSuccess(imgroupsservice.add(entity));
        return j;
    }
    
    @RequestMapping("/update")
    @ResponseBody
    public Json updateMenu(IMGroups entity){
        Json j=new Json();
        j.setSuccess( imgroupsservice.update(entity));
        return j;
    }
    
    @RequestMapping("/updatePage")
    public String getMenu( IMGroups entity,String jsp,HttpServletRequest request){
        request.setAttribute("entity", imgroupsservice.getOne(entity));
        return jsp;
    }
    
    @RequestMapping("/del")
    @ResponseBody
    public Json deleteMenu(IMGroups entity){
        Json j=new Json();
        j.setSuccess(imgroupsservice.del(entity));
        return j;
    }
    
    @RequestMapping("/getall")
    @ResponseBody
    public Json getAll(IMGroups entity){
        Json j=new Json();
        List<IMGroups> data=imgroupsservice.getAll(entity);
        j.setData(data);
        j.setSuccess(true);
        return j;
    }
    
}
