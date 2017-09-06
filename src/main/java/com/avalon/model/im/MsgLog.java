package com.avalon.model.im;

import java.util.Date;

import com.avalon.vo.Paging;

public class MsgLog  extends Paging{
    private String id;

    private String mineid;

    private String minename;

    private String toid;

    private String toname;

    private String type;

    private String content;

    private String status;

    private Date createtime;

    private Date updatetime;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getMineid() {
        return mineid;
    }

    public void setMineid(String mineid) {
        this.mineid = mineid == null ? null : mineid.trim();
    }

    public String getMinename() {
        return minename;
    }

    public void setMinename(String minename) {
        this.minename = minename == null ? null : minename.trim();
    }

    public String getToid() {
        return toid;
    }

    public void setToid(String toid) {
        this.toid = toid == null ? null : toid.trim();
    }

    public String getToname() {
        return toname;
    }

    public void setToname(String toname) {
        this.toname = toname == null ? null : toname.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }
}