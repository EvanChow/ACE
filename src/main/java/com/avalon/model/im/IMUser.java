package com.avalon.model.im;

import com.avalon.vo.Paging;

public class IMUser extends Paging{
    private String id;

    private String username;

    private String sign;

    private String avatar;

    private String status;
    
    private String sessionid;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getSign() {
        return sign;
    }

    public void setSign(String sign) {
        this.sign = sign == null ? null : sign.trim();
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar == null ? null : avatar.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getSessionid() {
        return sessionid;
    }

    public void setSessionid(String sessionid) {
        this.sessionid = sessionid;
    }
    
    
    
}