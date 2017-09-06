package com.avalon.controller.sys;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.avalon.model.sys.Menu;
import com.avalon.service.sys.MenuService;
import com.avalon.util.SysUtil;
import com.avalon.vo.DataGrid;
import com.avalon.vo.Json;
import com.avalon.vo.Parameter;

@Controller
@RequestMapping("/menu")
public class MenuCtrl {

    @Autowired
    private MenuService menuService;
    
    
    @RequestMapping("/dg")
    @ResponseBody
    public DataGrid DataPagination(Menu entity,Parameter parameter){
        System.out.println(parameter.toString());
        
        entity.setLimit(parameter.getiDisplayStart());//起始页
        entity.setOffset(parameter.getiDisplayLength());//偏移页
        DataGrid dg=new DataGrid();
        List<Menu> list=menuService.DataPagination(entity);
        int count=menuService.DataPaginationCount(entity);
        dg.setData(list);
        dg.setDraw(0);
        dg.setRecordsFiltered(count);
        dg.setRecordsTotal(count);
        return dg;
    }
    
    @RequestMapping("/add")
    @ResponseBody
    public Json addMenu(Menu menu){
        Json j=new Json();
        menu.setMenuid(SysUtil.createID("MU"));
        menu.setStarttime(new Date());
        menu.setEndtime(new Date());
        j.setSuccess(menuService.addMenu(menu));
        return j;
    }
    
    @RequestMapping("/update")
    @ResponseBody
    public Json updateMenu(Menu menu){
        Json j=new Json();
        menu.setEndtime(new Date());
        j.setSuccess( menuService.updateMenu(menu));
        return j;
    }
    
    @RequestMapping("/del")
    @ResponseBody
    public Json deleteMenu(String menuid){
        Json j=new Json();
        Menu menu=new Menu();
        menu.setMenuid(menuid);
        j.setSuccess(menuService.delMenu(menu));
        return j;
    }
    
    @RequestMapping("/updatePage")
    public String getMenu(String menuid,String jsp,HttpServletRequest request){
        Menu menu=new Menu();
        menu.setMenuid(menuid);
        request.setAttribute("menu", menuService.selectMenu(menu));
        return jsp;
    }
    
    
    @RequestMapping("/tree")
    @ResponseBody
    public Json treeMenu(String pid){
        Json j=new Json();
        List<Object> data=menuService.treeMapVo(pid);
        if(data.size()>0){
          j.setSuccess(true);  
        }
        j.setData(data);
        
        return j;
    }
    
    @RequestMapping("/remotetree")
    @ResponseBody
    public Json treeMenuMap(String pid){
        Json j=new Json();
        List<Object> data=menuService.TreeVO(pid);//回调获取
        j.setData(data);
        j.setSuccess(true);
        return j;
    }
    
    @RequestMapping("/remotetreepid")
    @ResponseBody
    public Json treeMenuPid(String pid){
        Json j=new Json();
        List<Object> data=menuService.treepid(pid);//
        
        if(pid.equals("root")){
            List<Object> res=new ArrayList<Object>();
            Map<String,Object> menu=new HashMap<String,Object>();
            menu.put("icon-class","red");
            menu.put("type","folder");
            menu.put("text","根目录");
            Map<String,Object> additionalParametersmap=new HashMap<String,Object>();
            additionalParametersmap.put("id","00-00");
            additionalParametersmap.put("children",data);
            additionalParametersmap.put("item-selected",false);
            menu.put("additionalParameters",additionalParametersmap);
            res.add(menu);
            j.setData(res);
        }else{
            j.setData(data);
        }
        j.setSuccess(true);
        return j;
    }
    
    @RequestMapping("/remotepid")
    @ResponseBody
    public Json treeMenuPidall(String pid){
        Json j=new Json();
        List<Object> data=menuService.treepidAll(pid);//
        j.setData(data);
        j.setSuccess(true);
        return j;
    }
    
    @RequestMapping("/path")
    @ResponseBody
    public Json treeMenuPath(String path){
        if("root".equals(path)){
            path=null;
        }
        Json j=new Json();
        j.setData(menuService.treePathVo(path));
        j.setSuccess(true);
        return j;
    }
    
    @RequestMapping("/sort")
    @ResponseBody
    public Json treeSort(String jsonstr){
        Json j=new Json();
        List<Menu> menus=new ArrayList<Menu>();
        JSONArray  list=JSON.parseArray(jsonstr);
        menuService.SortTree(list, menus,"00-00");
        j.setSuccess(menuService.SortMenu(menus));
        return j;
    }

    
    
}
