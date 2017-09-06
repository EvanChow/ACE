package com.avalon.model.sys;

import com.avalon.vo.Paging;

public class Group  extends Paging{
    private String groupid;

    private String groupname;

    private Integer status;

    private String groupdesc;

 

    public String getGroupid() {
        return groupid;
    }

    public void setGroupid(String groupid) {
        this.groupid = groupid == null ? null : groupid.trim();
    }

    public String getGroupname() {
        return groupname;
    }

    public void setGroupname(String groupname) {
        this.groupname = groupname == null ? null : groupname.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getGroupdesc() {
        return groupdesc;
    }

    public void setGroupdesc(String groupdesc) {
        this.groupdesc = groupdesc == null ? null : groupdesc.trim();
    }

  
}