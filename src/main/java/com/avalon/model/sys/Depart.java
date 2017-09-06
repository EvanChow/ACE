package com.avalon.model.sys;

import com.avalon.vo.Paging;

public class Depart  extends Paging{
    private String departid;

    private String departname;

    private Integer status;

    private String departdesc;

    public String getDepartid() {
        return departid;
    }

    public void setDepartid(String departid) {
        this.departid = departid == null ? null : departid.trim();
    }

    public String getDepartname() {
        return departname;
    }

    public void setDepartname(String departname) {
        this.departname = departname == null ? null : departname.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getDepartdesc() {
        return departdesc;
    }

    public void setDepartdesc(String departdesc) {
        this.departdesc = departdesc == null ? null : departdesc.trim();
    }

  
}