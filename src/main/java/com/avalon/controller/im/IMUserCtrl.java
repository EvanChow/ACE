package com.avalon.controller.im;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.avalon.model.im.IMUser;
import com.avalon.service.im.IMUserService;
import com.avalon.util.SysUtil;
import com.avalon.vo.DataGrid;
import com.avalon.vo.Json;
import com.avalon.vo.Parameter;

@Controller
@RequestMapping("/imuser")
public class IMUserCtrl {
    @Autowired
    private IMUserService IMUserservice;
    
    @RequestMapping("/dg")
    @ResponseBody
    public DataGrid DataPagination(IMUser entity,Parameter parameter){
        entity.setLimit(parameter.getiDisplayStart());//起始页
        entity.setOffset(parameter.getiDisplayLength());//偏移页
        DataGrid dg=new DataGrid();
        List<IMUser> list=IMUserservice.DataPagination(entity);
        int count=IMUserservice.DataPaginationCount(entity);
        dg.setData(list);
        dg.setDraw(0);
        dg.setRecordsFiltered(count);
        dg.setRecordsTotal(count);
        return dg;
    }
    
    @RequestMapping("/add")
    @ResponseBody
    public Json addMenu(IMUser entity){
        Json j=new Json();
        entity.setId(SysUtil.createID("IM"));
        j.setSuccess(IMUserservice.add(entity));
        return j;
    }
    
    @RequestMapping("/update")
    @ResponseBody
    public Json updateMenu(IMUser entity){
        Json j=new Json();
        j.setSuccess( IMUserservice.update(entity));
        return j;
    }
    
    @RequestMapping("/updatePage")
    public String getMenu( IMUser entity,String jsp,HttpServletRequest request){
        request.setAttribute("entity", IMUserservice.getOne(entity));
        return jsp;
    }
    
    @RequestMapping("/del")
    @ResponseBody
    public Json deleteMenu(IMUser entity){
        Json j=new Json();
        j.setSuccess(IMUserservice.del(entity));
        return j;
    }
    
    @RequestMapping("/getall")
    @ResponseBody
    public Json getAll(IMUser entity){
        Json j=new Json();
        List<IMUser> data=IMUserservice.getAll(entity);
        j.setData(data);
        j.setSuccess(true);
        return j;
    }
}
