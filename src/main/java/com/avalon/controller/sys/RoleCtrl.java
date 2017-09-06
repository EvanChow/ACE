package com.avalon.controller.sys;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.avalon.model.sys.Group;
import com.avalon.model.sys.Role;
import com.avalon.service.sys.RoleService;
import com.avalon.util.SysUtil;
import com.avalon.vo.DataGrid;
import com.avalon.vo.Json;
import com.avalon.vo.Parameter;

@Controller
@RequestMapping("/role")
public class RoleCtrl {
    @Autowired
    private RoleService Roleservice;
    
    @RequestMapping("/dg")
    @ResponseBody
    public DataGrid DataPagination(Role entity,Parameter parameter){
        entity.setLimit(parameter.getiDisplayStart());//起始页
        entity.setOffset(parameter.getiDisplayLength());//偏移页
        DataGrid dg=new DataGrid();
        List<Role> list=Roleservice.DataPagination(entity);
        int count=Roleservice.DataPaginationCount(entity);
        dg.setData(list);
        dg.setDraw(0);
        dg.setRecordsFiltered(count);
        dg.setRecordsTotal(count);
        return dg;
    }
    
    @RequestMapping("/add")
    @ResponseBody
    public Json addMenu(Role entity,String menuids){
        Json j=new Json();
        entity.setRoleid(SysUtil.createID("RID"));
        entity.setStatus(1);
        entity.setStarttime(new Date());
        entity.setEndtime(new Date());
        j.setSuccess(Roleservice.add(entity));
        
        Roleservice.addRoleMenu(menuids, entity.getRoleid());
        
        return j;
    }
    
    @RequestMapping("/update")
    @ResponseBody
    public Json updateMenu(Role entity,String menuids){
        System.out.println(menuids);
        Json j=new Json();
        entity.setEndtime(new Date());
        j.setSuccess( Roleservice.update(entity));
        Roleservice.delRM(entity);
        Roleservice.addRoleMenu(menuids, entity.getRoleid());
        return j;
    }
    @RequestMapping("/updatePage")
    public String getMenu( Role entity,String jsp,HttpServletRequest request){
        request.setAttribute("entity", Roleservice.getOne(entity));
        return jsp;
    }
    
    @RequestMapping("/del")
    @ResponseBody
    public Json deleteMenu(Role entity){
        Json j=new Json();
        j.setSuccess(Roleservice.del(entity));
        return j;
    }
    
    @RequestMapping("/getall")
    @ResponseBody
    public Json getAll(Role entity){
        Json j=new Json();
        List<Role> data=Roleservice.getAll(entity);
        j.setData(data);
        j.setSuccess(true);
        return j;
    }
    
    
    
    
    
}
