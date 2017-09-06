package com.avalon.model.sys;

import java.util.Date;

import com.avalon.vo.Paging;

public class Menu extends Paging{
    private String menuid;

    private String menuname;

    private String pid;

    private String url;

    private String img;

    private String icon;

    private Integer orderid;

    private Integer ismenu;

    private Integer menutype;

    private Date starttime;

    private Date endtime;

    private String isOpenBlank;

    private String isDefaultOpen;


    public String getMenuid() {
        return menuid;
    }

    public void setMenuid(String menuid) {
        this.menuid = menuid == null ? null : menuid.trim();
    }

    public String getMenuname() {
        return menuname;
    }

    public void setMenuname(String menuname) {
        this.menuname = menuname == null ? null : menuname.trim();
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid == null ? null : pid.trim();
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img == null ? null : img.trim();
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon == null ? null : icon.trim();
    }

    public Integer getOrderid() {
        return orderid;
    }

    public void setOrderid(Integer orderid) {
        this.orderid = orderid;
    }

    public Integer getIsmenu() {
        return ismenu;
    }

    public void setIsmenu(Integer ismenu) {
        this.ismenu = ismenu;
    }

    public Integer getMenutype() {
        return menutype;
    }

    public void setMenutype(Integer menutype) {
        this.menutype = menutype;
    }

    public Date getStarttime() {
        return starttime;
    }

    public void setStarttime(Date starttime) {
        this.starttime = starttime;
    }

    public Date getEndtime() {
        return endtime;
    }

    public void setEndtime(Date endtime) {
        this.endtime = endtime;
    }

    public String getIsOpenBlank() {
        return isOpenBlank;
    }

    public void setIsOpenBlank(String isOpenBlank) {
        this.isOpenBlank = isOpenBlank == null ? null : isOpenBlank.trim();
    }

    public String getIsDefaultOpen() {
        return isDefaultOpen;
    }

    public void setIsDefaultOpen(String isDefaultOpen) {
        this.isDefaultOpen = isDefaultOpen == null ? null : isDefaultOpen.trim();
    }

 
}