/*
当你想在你的代码中找到一个错误时，这很难；当你认为你的代码是不会有错误时，这就更难了。                                                          ——Steve McConnell
 */

package com.avalon.controller.quartz;

import java.util.List;
import java.util.Date;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.avalon.model.quartz.Schedulejob;
import com.avalon.service.quartz.SchedulejobService;
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
@RequestMapping("/schedulejob")
public class SchedulejobCtrl  implements ILog{

	@Autowired
	private SchedulejobService schedulejobService;
	
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
    public DataGrid DataPagination(Schedulejob entity,Parameter parameter){
        entity.setLimit(parameter.getiDisplayStart());//起始页
        entity.setOffset(parameter.getiDisplayLength());//偏移页
        DataGrid dg=new DataGrid();
        List<Schedulejob> list=schedulejobService.DataPagination(entity);
        int count=schedulejobService.DataPaginationCount(entity);
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
    public Json add(Schedulejob entity){
        Json j=new Json();
        entity.setId(SysUtil.createID("id"));
        
        
	             entity.setCreatetime(new Date());
	             entity.setModifytime(new Date());
	   
        j.setSuccess(schedulejobService.add(entity));
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
    public Json addBatch(List<Schedulejob> list){
        Json j=new Json();
        for(Schedulejob entity:list){
	        entity.setId(SysUtil.createID("id".toUpperCase()));
	        
	             entity.setCreatetime(new Date());
	             entity.setModifytime(new Date());
        }
        j.setSuccess(schedulejobService.addBatch(list));
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
    public String updatePage(Schedulejob entity,String jsp,HttpServletRequest request){
        request.setAttribute("entity", schedulejobService.getOne(entity));
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
    public Json update(Schedulejob entity){
        Json j=new Json();
        j.setSuccess(schedulejobService.update(entity));
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
    public Json updateBatch(List<Schedulejob> entity){
        Json j=new Json();
        j.setSuccess(schedulejobService.updateBatch(entity));
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
    public Json delete(Schedulejob entity){
        Json j=new Json();
        j.setSuccess(schedulejobService.del(entity));
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
    public Json getAll(Schedulejob entity){
        Json j=new Json();
        List<Schedulejob> data=schedulejobService.getAll(entity);
        j.setData(data);
        j.setSuccess(true);
        return j;
    }
	
	
	
}
