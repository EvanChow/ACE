package com.avalon.service.sys;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.avalon.dao.MyBatisDao;
import com.avalon.log.ILog;
import com.avalon.model.sys.User;

@Service
public class UserService  implements ILog{
    
    @Autowired
    private MyBatisDao<User> mybatisDao;
    @Autowired
    private MyBatisDao<List> mybatislistDao;
    
    private String mapper="UserMapper.";
    
    /**
     * 
     * @方法名: add
     * @功能描述: 添加
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： Mar 24, 2017 2:32:45 PM
     */
    public boolean add(User entity){
        try {
            return mybatisDao.add(mapper+"insertSelective", entity);
        } catch (Exception e) {
            loggerError.error(e.getMessage());
        }
        return false;
    }
    
    public boolean addBatch(List<User> entity){
        try {
            return mybatislistDao.add(mapper+"insertbatch", entity);
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
     * @创建时间： Mar 24, 2017 2:32:58 PM
     */
    public User getOne(User entity){
        List<User> list=getAll(entity);
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
    public List<User> getAll(User entity){
        List<User> list=new ArrayList<User>();
        try {
            list=mybatisDao.getAllByEntity(mapper+"select", entity);
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
     * @创建时间： Mar 24, 2017 3:17:14 PM
     */
    public boolean del(User entity){
        try {
            return mybatisDao.remove(mapper+"delete", entity);
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
     * @创建时间： Mar 24, 2017 3:18:52 PM
     */
    public boolean update(User entity){
        try {
            return mybatisDao.edit(mapper+"updateByUidSelective", entity);
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
     * @创建时间： 2017-1-3 下午03:48:20
     */
    public List<User> DataPagination(User entity){
        List<User> list=new ArrayList<User>();
        try {
            list=mybatisDao.getAllByEntity(mapper+"DataPagination", entity);
        } catch (Exception e) {
            loggerError.error(e.getMessage());
        }
        
        return list;
    }
    
    public int DataPaginationCount(User entity){
        int count=0;
        try {
            count= mybatisDao.getAllCount(mapper+"DataPaginationCount", entity);
        } catch (Exception e) {
            loggerError.error(e.getMessage());
        }
        return count;
    }
    
    
    
    
    
}
