package com.avalon.service.im;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.avalon.dao.MyBatisDao;
import com.avalon.log.ILog;
import com.avalon.model.im.IMGroup;
import com.avalon.model.im.IMGroups;
import com.avalon.model.im.IMUser;

@Service
public class IMUserService implements ILog{
    
    @Autowired
    private MyBatisDao<IMUser> mybatisDao;
    
    @Autowired
    private MyBatisDao<IMGroup> mybatisgroupDao;

   
    private String mapper="IMUserMapper.";
    
    /**
     * 
     * @方法名: add
     * @功能描述: 添加
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： Mar 24, 2017 2:32:45 PM
     */
    public boolean add(IMUser entity){
        try {
            return mybatisDao.add(mapper+"insertSelective", entity);
        } catch (Exception e) {
            loggerError.error(e.getMessage());
        }
        return false;
    }
    
//    public boolean addBatch(List<IMUser> entity){
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
    public IMUser getOne(IMUser entity){
        List<IMUser> list=getAll(entity);
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
    public List<IMUser> getAll(IMUser entity){
        List<IMUser> list=new ArrayList<IMUser>();
        try {
            list=mybatisDao.getAllByEntity(mapper+"select", entity);
        } catch (Exception e) {
            loggerError.error(e.getMessage());
        }
        return list;
    }
    
    public List<IMUser> getAllByGroup(IMGroup group){
        Map<String,Object> entitys=new HashMap<String,Object>();
        entitys.put("uid", group.getUid());
        entitys.put("gid", group.getGid());
        IMUser entity=new IMUser();
        entity.setMap(entitys);
        List<IMUser> list=new ArrayList<IMUser>();
        try {
            list=mybatisDao.getAllByEntity(mapper+"selectGroupUser", entity);
        } catch (Exception e) {
            loggerError.error(e.getMessage());
        }
        return list;
    }
    
    public List<IMUser> getAllByGroups(IMGroups groups){
        Map<String,Object> entitys=new HashMap<String,Object>();
        entitys.put("gid", groups.getId());
        IMUser entity=new IMUser();
        entity.setMap(entitys);
        List<IMUser> list=new ArrayList<IMUser>();
        try {
            list=mybatisDao.getAllByEntity(mapper+"selectGroupsUser", entity);
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
    public boolean del(IMUser entity){
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
    public boolean update(IMUser entity){
        try {
            return mybatisDao.edit(mapper+"updateByPrimaryKeySelective", entity);
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
    public List<IMUser> DataPagination(IMUser entity){
        List<IMUser> list=new ArrayList<IMUser>();
        try {
            list=mybatisDao.getAllByEntity(mapper+"DataPagination", entity);
        } catch (Exception e) {
            loggerError.error(e.getMessage());
        }
        
        return list;
    }
    
    public int DataPaginationCount(IMUser entity){
        int count=0;
        try {
            count= mybatisDao.getAllCount(mapper+"DataPaginationCount", entity);
        } catch (Exception e) {
            loggerError.error(e.getMessage());
        }
        return count;
    }
    
    
}
