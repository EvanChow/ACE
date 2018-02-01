package com.avalon.service.sys;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.avalon.dao.MyBatisDao;
import com.avalon.log.ILog;
import com.avalon.model.sys.Role;

@Service
public class RoleService   implements ILog{
    @Autowired
    private MyBatisDao<Role> mybatisDao;
    
    @Autowired
    private MyBatisDao<List> mybatislistDao;
    
    @Autowired
    private SysLogService syslogService;
   
    private String mapper="RoleMapper.";
    
    /**
     * 
     * @方法名: add
     * @功能描述: 添加
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： Mar 24, 2017 2:32:45 PM
     */
    public boolean add(Role entity){
        try {
            return mybatisDao.add(mapper+"insertSelective", entity);
        } catch (Exception e) {
            loggerError.error(e.getMessage());
        }
        return false;
    }
    
    public boolean addRoleMenu(String menuids,String roleid){
        String[] list=menuids.split(",");
        List<Map<String,String>> entity=new ArrayList<Map<String,String>>();
        Map<String,String> map=new HashMap<String,String>();
        for(String menuid:list){
            map=new HashMap<String,String>();
            map.put("menuid", menuid);
            map.put("roleid", roleid);
            entity.add(map);
        }
        try {
            return mybatislistDao.add(mapper+"insertbatchrole", entity);
        } catch (Exception e) {
            e.printStackTrace();
            loggerError.error(e.getMessage());
        }
        return false;
    }
    
    
//    public boolean addBatch(List<Role> entity){
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
    public Role getOne(Role entity){
        List<Role> list=getAll(entity);
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
    public List<Role> getAll(Role entity){
        List<Role> list=new ArrayList<Role>();
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
    public boolean del(Role entity){
        try {
            return mybatisDao.remove(mapper+"delete", entity);
        } catch (Exception e) {
            loggerError.error(e.getMessage());
        }
        return false;
    }
    
    public boolean delRM(Role entity){
        try {
            return mybatisDao.remove(mapper+"deleterm", entity);
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
    public boolean update(Role entity){
        try {
            return mybatisDao.edit(mapper+"updateByRoleidSelective", entity);
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
    public List<Role> DataPagination(Role entity){
        List<Role> list=new ArrayList<Role>();
        try {
            list=mybatisDao.getAllByEntity(mapper+"DataPagination", entity);
        } catch (Exception e) {
            loggerError.error(e.getMessage());
        }
        
        return list;
    }
    
    public int DataPaginationCount(Role entity){
        int count=0;
        try {
            count= mybatisDao.getAllCount(mapper+"DataPaginationCount", entity);
        } catch (Exception e) {
            loggerError.error(e.getMessage());
        }
        return count;
    }
    
    
    
    
}
