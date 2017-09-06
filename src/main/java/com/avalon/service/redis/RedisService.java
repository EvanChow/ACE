package com.avalon.service.redis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.avalon.dao.MyRedisDao;

@Service
public class RedisService {

    @Autowired
    private MyRedisDao myRedisDao;
    
    /**
     * 
     * @方法名: add
     * @功能描述: 
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2016-9-29 下午03:01:32
     */
    public boolean add(String key,String value){
        myRedisDao.add(key,value);
        return true;
    }
    
    public void delete(String key){
        myRedisDao.del(key);
    }
    
    public String get(String key){
      return myRedisDao.get(key);
    }
    
    public String update(String key,String value){
        return myRedisDao.update(key, value);
    }
    
    public boolean addMap(String key,String field,String value){
        return myRedisDao.addMap(key, field, value);
    }
    
    public boolean addList(String key,String value){
         myRedisDao.addList(key, value);
         return true;
    }
    
    
    
    
}
