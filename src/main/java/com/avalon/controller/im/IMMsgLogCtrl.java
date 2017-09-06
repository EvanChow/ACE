package com.avalon.controller.im;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.avalon.model.im.MsgLog;
import com.avalon.service.im.IMMsgLogService;
import com.avalon.util.SysUtil;
import com.avalon.vo.DataGrid;
import com.avalon.vo.Json;
import com.avalon.vo.Parameter;


@Controller
@RequestMapping("/immsglog")
public class IMMsgLogCtrl {
    @Autowired
    private IMMsgLogService immsglogservice;
    
    @RequestMapping("/dg")
    @ResponseBody
    public DataGrid DataPagination(MsgLog entity,Parameter parameter){
        entity.setLimit(parameter.getiDisplayStart());//起始页
        entity.setOffset(parameter.getiDisplayLength());//偏移页
        DataGrid dg=new DataGrid();
        List<MsgLog> list=immsglogservice.DataPagination(entity);
        int count=immsglogservice.DataPaginationCount(entity);
        dg.setData(list);
        dg.setDraw(0);
        dg.setRecordsFiltered(count);
        dg.setRecordsTotal(count);
        return dg;
    }
    
    @RequestMapping("/add")
    @ResponseBody
    public Json addMenu(MsgLog entity){
        Json j=new Json();
        entity.setId(SysUtil.createID("IM"));
        entity.setStatus("1");
        entity.setCreatetime(new Date());
        entity.setUpdatetime(new Date());
        j.setSuccess(immsglogservice.add(entity));
        return j;
    }
    
    @RequestMapping("/update")
    @ResponseBody
    public Json updateMenu(MsgLog entity){
        Json j=new Json();
        j.setSuccess( immsglogservice.update(entity));
        return j;
    }
    
    @RequestMapping("/updatePage")
    public String getMenu( MsgLog entity,String jsp,HttpServletRequest request){
        request.setAttribute("entity", immsglogservice.getOne(entity));
        return jsp;
    }
    
    @RequestMapping("/del")
    @ResponseBody
    public Json deleteMenu(MsgLog entity){
        Json j=new Json();
        j.setSuccess(immsglogservice.del(entity));
        return j;
    }
    
    @RequestMapping("/getall")
    @ResponseBody
    public Json getAll(MsgLog entity){
        Json j=new Json();
        List<MsgLog> data=immsglogservice.getAll(entity);
        j.setData(data);
        j.setSuccess(true);
        return j;
    }
}
