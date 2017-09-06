package com.avalon.controller.sys;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.avalon.model.sys.Depart;
import com.avalon.model.sys.User;
import com.avalon.service.sys.DepartService;
import com.avalon.util.SysUtil;
import com.avalon.vo.DataGrid;
import com.avalon.vo.Json;
import com.avalon.vo.Parameter;

@Controller
@RequestMapping("/depart")
public class DepartCtrl {
    @Autowired
    private DepartService departservice;
    
    @RequestMapping("/dg")
    @ResponseBody
    public DataGrid DataPagination(Depart entity,Parameter parameter){
        entity.setLimit(parameter.getiDisplayStart());//起始页
        entity.setOffset(parameter.getiDisplayLength());//偏移页
        DataGrid dg=new DataGrid();
        List<Depart> list=departservice.DataPagination(entity);
        int count=departservice.DataPaginationCount(entity);
        dg.setData(list);
        dg.setDraw(0);
        dg.setRecordsFiltered(count);
        dg.setRecordsTotal(count);
        return dg;
    }
    
    @RequestMapping("/add")
    @ResponseBody
    public Json addMenu(Depart entity){
        Json j=new Json();
        entity.setDepartid(SysUtil.createID("DID"));
        entity.setStatus(1);
        j.setSuccess(departservice.add(entity));
        return j;
    }
    
    @RequestMapping("/update")
    @ResponseBody
    public Json updateMenu(Depart entity){
        Json j=new Json();
        j.setSuccess( departservice.update(entity));
        return j;
    }
    
    @RequestMapping("/updatePage")
    public String getMenu( Depart entity,String jsp,HttpServletRequest request){
        request.setAttribute("entity", departservice.getOne(entity));
        return jsp;
    }
    
    @RequestMapping("/del")
    @ResponseBody
    public Json deleteMenu(Depart entity){
        Json j=new Json();
        j.setSuccess(departservice.del(entity));
        return j;
    }
    
    @RequestMapping("/getall")
    @ResponseBody
    public Json getAll(Depart entity){
        Json j=new Json();
        List<Depart> data=departservice.getAll(entity);
        j.setData(data);
        j.setSuccess(true);
        return j;
    }
    
    
}
