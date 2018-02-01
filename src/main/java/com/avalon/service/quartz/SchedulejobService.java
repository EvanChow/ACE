/*
当你想在你的代码中找到一个错误时，这很难；当你认为你的代码是不会有错误时，这就更难了。                                                          ——Steve McConnell
 */

package com.avalon.service.quartz;

import java.util.List;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.avalon.dao.MyBatisDao;
import com.avalon.log.ILog;
import com.avalon.model.quartz.Schedulejob;

/**
 *
 * @author Evan
 * @version 1.0
 * @create 1.0
 * */
@Service
public class SchedulejobService implements ILog {

	@Autowired
	private MyBatisDao<Schedulejob> schedulejobDao;
	
	@SuppressWarnings("unchecked")
	@Autowired
    private MyBatisDao<List> schedulejobListDao;
	
	//SqlMap空间
	private String mapper="SchedulejobMapper.";
	
	/**
     * 
     * @方法名: add
     * @功能描述: 添加
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间：
     */
    public boolean add(Schedulejob entity){
        try {
            return schedulejobDao.add(mapper+"insertSelective", entity);
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
     public boolean addBatch(List<Schedulejob> entity){
        try {
            return schedulejobListDao.add(mapper+"insertbatch", entity);
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
    public Schedulejob getOne(Schedulejob entity){
        List<Schedulejob> list=getAll(entity);
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
    public List<Schedulejob> getAll(Schedulejob entity){
        List<Schedulejob> list=new ArrayList<Schedulejob>();
        try {
            list=schedulejobDao.getAllByEntity(mapper+"select", entity);
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
    public boolean del(Schedulejob entity){
        try {
            return schedulejobDao.remove(mapper+"delete", entity);
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
    public boolean update(Schedulejob entity){
        try {
            return schedulejobDao.edit(mapper+"updateSelectiveById", entity);
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
   public boolean updateBatch(List<Schedulejob> entity){
        try {
            return schedulejobListDao.add(mapper+"updatebatch", entity);
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
    public List<Schedulejob> DataPagination(Schedulejob entity){
        List<Schedulejob> list=new ArrayList<Schedulejob>();
        try {
            list=schedulejobDao.getAllByEntity(mapper+"DataPagination", entity);
        } catch (Exception e) {
            loggerError.error(e.getMessage());
        }
        
        return list;
    }
    
    
    public int DataPaginationCount(Schedulejob entity){
        int count=0;
        try {
            count= schedulejobDao.getAllCount(mapper+"DataPaginationCount", entity);
        } catch (Exception e) {
            loggerError.error(e.getMessage());
        }
        return count;
    }
	
	
    
  
}
