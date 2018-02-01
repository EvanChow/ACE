package com.avalon.service.sys;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.avalon.dao.MyBatisDao;
import com.avalon.log.ILog;
import com.avalon.model.sys.Depart;

@Service
public class DepartService implements ILog{
    @Autowired
    private MyBatisDao<Depart> mybatisDao;
    
    @Autowired
    private SysLogService syslogService;
   
    private String mapper="DepartMapper.";
    
    /**
     * 
     * @方法名: add
     * @功能描述: 添加
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： Mar 24, 2017 2:32:45 PM
     */
    public boolean add(Depart entity){
        try {
            boolean boo=mybatisDao.add(mapper+"insertSelective", entity);
            syslogService.addLog("add", "DepartService",boo==true?"添加成功":"添加失败");
            return boo;
        } catch (Exception e) {
            syslogService.addLog("add", "DepartService", e.getMessage());
            loggerError.error(e.getMessage());
        }
        
        return false;
    }
    
//    public boolean addBatch(List<Depart> entity){
//        try {
//            return mybatislistDao.add(mapper+"insertbatch", entity);
//        } catch (Exception e) {
//            loggerError.error(e.getMessage());
//        }
//        return false;
//    }
//    
    
    /**
     * 
     * @方法名: getOne
     * @功能描述: 获得一个
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： Mar 24, 2017 2:32:58 PM
     */
    public Depart getOne(Depart entity){
        List<Depart> list=getAll(entity);
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
     * @创建时间： Mar 24, 2017 2:33:11 PM
     */
    public List<Depart> getAll(Depart entity){
        List<Depart> list=new ArrayList<Depart>();
        try {
            list=mybatisDao.getAllByEntity(mapper+"select", entity);
            syslogService.addLog("getAll", "DepartService","查询成功");
        } catch (Exception e) {
            syslogService.addLog("getAll", "DepartService",e.getMessage());
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
     * @创建时间： Mar 24, 2017 3:17:14 PM
     */
    public boolean del(Depart entity){
        try {
            boolean boo= mybatisDao.remove(mapper+"delete", entity);
            syslogService.addLog("getAll", "DepartService",boo?"删除成功":"删除失败");
            return boo;
        } catch (Exception e) {
            syslogService.addLog("getAll", "DepartService",e.getMessage());
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
     * @创建时间： Mar 24, 2017 3:18:52 PM
     */
    public boolean update(Depart entity){
        try {
            boolean boo= mybatisDao.edit(mapper+"updateByDepartidSelective", entity);
            syslogService.addLog("update", "DepartService",boo?"更新成功":"更新失败");
            return boo;
        } catch (Exception e) {
            syslogService.addLog("update", "DepartService",e.getMessage());
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
     * @创建时间： 2017-1-3 下午03:48:20
     */
    public List<Depart> DataPagination(Depart entity){
        List<Depart> list=new ArrayList<Depart>();
        try {
            list=mybatisDao.getAllByEntity(mapper+"DataPagination", entity);
        } catch (Exception e) {
            syslogService.addLog("DataPagination", "DepartService",e.getMessage());
            loggerError.error(e.getMessage());
        }
        
        return list;
    }
    
    public int DataPaginationCount(Depart entity){
        int count=0;
        try {
            count= mybatisDao.getAllCount(mapper+"DataPaginationCount", entity);
        } catch (Exception e) {
            syslogService.addLog("DataPaginationCount", "DepartService",e.getMessage());
            loggerError.error(e.getMessage());
        }
        return count;
    }
    
    
}
