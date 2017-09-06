package com.avalon.model.im;

import java.util.List;

import com.avalon.vo.Paging;

public class IMGroup extends Paging{
    private String gid;

    private String groupname;

    private String uid;

    private Integer id;
    
    private List<IMUser> list;

    public String getGid() {
        return gid;
    }

    public void setGid(String gid) {
        this.gid = gid == null ? null : gid.trim();
    }

    public String getGroupname() {
        return groupname;
    }

    public void setGroupname(String groupname) {
        this.groupname = groupname == null ? null : groupname.trim();
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid == null ? null : uid.trim();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public List<IMUser> getList() {
        return list;
    }

    public void setList(List<IMUser> list) {
        this.list = list;
    }
    
    
}