package com.avalon.service.im;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.avalon.model.im.IMData;
import com.avalon.model.im.IMGroup;
import com.avalon.model.im.IMGroups;
import com.avalon.model.im.IMUser;
import com.avalon.service.sys.SysLogService;

@Service
public class InitIMService {
    
    @Autowired
    private IMUserService imuserservice;
    @Autowired
    private IMGroupService imgroupservice;
    
    @Autowired
    private IMGroupsService imgroupsservice;
    
    @Autowired
    private SysLogService syslogService;
    
    /**
     * 
     * @方法名: getList
     * @功能描述: 初始化IM列表
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： Mar 31, 2017 5:55:41 PM
     */
    public IMData getList(String uid){
        IMData data=new IMData();
        IMUser mine=new IMUser();
        mine.setId(uid);
        mine=imuserservice.getOne(mine);
        //登录用户信息
        data.setMine(mine);
        //好友分組
        IMGroup imgroup=new IMGroup();
        imgroup.setUid(uid);
        List<IMGroup> friend=imgroupservice.getAllByUser(imgroup);
        data.setFriend(friend);
        //群
        IMGroups groups=new IMGroups();
        groups.setId(uid);
        List<IMGroups> group=imgroupsservice.getAllUid(groups);
        data.setGroup(group);        
        return data;
    }
    
    
    public IMData getMembers(IMGroups groups){       
        List<IMUser> list=imuserservice.getAllByGroups(groups);  
        //Map<String,Object> data=new HashMap<String,Object>();
        //data.put("list", list);
        IMData data=new IMData();
        data.setList(list);
        return data;
    }
    
}
