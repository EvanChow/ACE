/*
当你想在你的代码中找到一个错误时，这很难；当你认为你的代码是不会有错误时，这就更难了。                                                          ——Steve McConnell
 */

package com.avalon.service.sys;

import java.util.List;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.avalon.dao.MyBatisDao;
import com.avalon.log.ILog;
import com.avalon.model.sys.SysLog;

/**
 *
 * @author Evan
 * @version 1.0
 * @create 1.0
 * */
@Service
public class SysLogService implements ILog {

	@Autowired
	private MyBatisDao<SysLog> sysLogDao;
	
	@SuppressWarnings("unchecked")
	@Autowired
    private MyBatisDao<List> sysLogListDao;
	
	//SqlMap空间
	private String mapper="SysLogMapper.";
	
	/**
     * 
     * @方法名: add
     * @功能描述: 添加
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间：
     */
    public boolean add(SysLog entity){
        try {
            return sysLogDao.add(mapper+"insertSelective", entity);
        } catch (Exception e) {
            loggerError.error(e.getMessage());
        }
        return false;
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
     public boolean addBatch(List<SysLog> entity){
        try {
            return sysLogListDao.add(mapper+"insertbatch", entity);
        } catch (Exception e) {
            loggerError.error(e.getMessage());
        }
        return false;
    }
    
    /**
     * 
     * @方法名: getOne
     * @功能描述: 获得一个
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 
     */
    public SysLog getOne(SysLog entity){
        List<SysLog> list=getAll(entity);
        if(list.size()==1){
            entity=list.get(0); 
        }else{
            return null;
        }
        return entity;
    }
    
    /**
     * 
     * @方法名: getAll
     * @功能描述: 获得全部
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间：
     */
    public List<SysLog> getAll(SysLog entity){
        List<SysLog> list=new ArrayList<SysLog>();
        try {
            list=sysLogDao.getAllByEntity(mapper+"select", entity);
        } catch (Exception e) {
            loggerError.error(e.getMessage());
        }
        return list;
    }
    
     /**
     * 
     * @方法名: del
     * @功能描述: 删除
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间：
     */
    public boolean del(SysLog entity){
        try {
            return sysLogDao.remove(mapper+"delete", entity);
        } catch (Exception e) {
            loggerError.error(e.getMessage());
        }
        return false;
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
    public boolean update(SysLog entity){
        try {
            return sysLogDao.edit(mapper+"updateSelectiveById", entity);
        } catch (Exception e) {
            loggerError.error(e.getMessage());
        }
        return false;
    }
   
   /**
     * 
     * @方法名: update
     * @功能描述: 批量更新
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间：
     */
   public boolean updateBatch(List<SysLog> entity){
        try {
            return sysLogListDao.add(mapper+"updatebatch", entity);
        } catch (Exception e) {
            loggerError.error(e.getMessage());
        }
        return false;
    }
    
    
    /**
     * 
     * @方法名: DataPagination
     * @功能描述: 数据分页
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间：
     */
    public List<SysLog> DataPagination(SysLog entity){
        List<SysLog> list=new ArrayList<SysLog>();
        try {
            list=sysLogDao.getAllByEntity(mapper+"DataPagination", entity);
        } catch (Exception e) {
            loggerError.error(e.getMessage());
        }
        
        return list;
    }
    
    
    public int DataPaginationCount(SysLog entity){
        int count=0;
        try {
            count= sysLogDao.getAllCount(mapper+"DataPaginationCount", entity);
        } catch (Exception e) {
            loggerError.error(e.getMessage());
        }
        return count;
    }
	
	
    
  
}
