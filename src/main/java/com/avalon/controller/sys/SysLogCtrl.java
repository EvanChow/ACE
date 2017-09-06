/*
当你想在你的代码中找到一个错误时，这很难；当你认为你的代码是不会有错误时，这就更难了。                                                          ——Steve McConnell
 */

package com.avalon.controller.sys;

import java.util.List;
import java.util.Date;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.avalon.model.sys.SysLog;
import com.avalon.service.sys.SysLogService;
import com.avalon.util.SysUtil;
import com.avalon.vo.DataGrid;
import com.avalon.vo.Json;
import com.avalon.vo.Parameter;
import com.avalon.log.ILog;


/**
 *
 * @author Evan
 * @version 1.0
 * @create 1.0
 * */
@Controller
@RequestMapping("/sysLog")
public class SysLogCtrl  implements ILog{

	@Autowired
	private SysLogService sysLogService;
	
	/**
     * 
     * @方法名: DataPagination
     * @功能描述: 分页
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间：
     */
	@RequestMapping("/dg")
    @ResponseBody
    public DataGrid DataPagination(SysLog entity,Parameter parameter){
        entity.setLimit(parameter.getiDisplayStart());//起始页
        entity.setOffset(parameter.getiDisplayLength());//偏移页
        DataGrid dg=new DataGrid();
        List<SysLog> list=sysLogService.DataPagination(entity);
        int count=sysLogService.DataPaginationCount(entity);
        dg.setData(list);
        dg.setDraw(0);
        dg.setRecordsFiltered(count);
        dg.setRecordsTotal(count);
        return dg;
    }
    
    /**
     * 
     * @方法名: add
     * @功能描述: 添加
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间：
     */
    @RequestMapping("/add")
    @ResponseBody
    public Json add(SysLog entity){
        Json j=new Json();
        entity.setId(SysUtil.createID("id"));
        
        
	             entity.setCreatetime(new Date());
	             entity.setUpdatetime(new Date());
	   
        j.setSuccess(sysLogService.add(entity));
        return j;
    }
    /**
     * 
     * @方法名: addBatch
     * @功能描述: 批量添加
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间：
     */
    @RequestMapping("/addBatch")
    @ResponseBody
    public Json addBatch(List<SysLog> list){
        Json j=new Json();
        for(SysLog entity:list){
	        entity.setId(SysUtil.createID("id".toUpperCase()));
	        
	             entity.setCreatetime(new Date());
	             entity.setUpdatetime(new Date());
        }
        j.setSuccess(sysLogService.addBatch(list));
        return j;
    }
    
 	/**
     * 
     * @方法名: updatePage
     * @功能描述: 更新页面
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间：
     */
    @RequestMapping("/updatePage")
    public String updatePage(SysLog entity,String jsp,HttpServletRequest request){
        request.setAttribute("entity", sysLogService.getOne(entity));
        return jsp;
    }
    
    /**
     * 
     * @方法名: update
     * @功能描述: 更新
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间：
     */
    @RequestMapping("/update")
    @ResponseBody
    public Json update(SysLog entity){
        Json j=new Json();
        j.setSuccess(sysLogService.update(entity));
        return j;
    }
    
    /**
     * 
     * @方法名: updateBatch
     * @功能描述: 批量更新
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间：
     */
    @RequestMapping("/updateBatch")
    @ResponseBody
    public Json updateBatch(List<SysLog> entity){
        Json j=new Json();
        j.setSuccess(sysLogService.updateBatch(entity));
        return j;
    }
    
     /**
     * 
     * @方法名: delete
     * @功能描述: 删除
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间：
     */
    @RequestMapping("/del")
    @ResponseBody
    public Json delete(SysLog entity){
        Json j=new Json();
        j.setSuccess(sysLogService.del(entity));
        return j;
    }
    
    /**
     * 
     * @方法名: getAll
     * @功能描述: 获得所有数据
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间：
     */
    @RequestMapping("/getall")
    @ResponseBody
    public Json getAll(SysLog entity){
        Json j=new Json();
        List<SysLog> data=sysLogService.getAll(entity);
        j.setData(data);
        j.setSuccess(true);
        return j;
    }
	
	
	
}
