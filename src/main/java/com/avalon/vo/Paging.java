package com.avalon.vo;

import java.util.Map;

public class Paging {
    private int limit;//起始页
    private int offset;//偏移页
    private String sort;// 排序字段
    private String order;// asc/desc
    private String startTimeStr;
    private String endTimeStr;
    private Map<String,Object> map;//附加参数
    private String operatingid;//OPERATINGID


    public int getLimit() {
        return limit;
    }
    public void setLimit(int limit) {
        this.limit = limit;
    }
    public int getOffset() {
        return offset;
    }
    public void setOffset(int offset) {
        this.offset = offset;
    }
    public String getSort() {
        return sort;
    }
    public void setSort(String sort) {
        this.sort = sort;
    }
    public String getOrder() {
        return order;
    }
    public void setOrder(String order) {
        this.order = order;
    }
    public String getStartTimeStr() {
        return startTimeStr;
    }
    public void setStartTimeStr(String startTimeStr) {
        this.startTimeStr = startTimeStr;
    }
    public String getEndTimeStr() {
        return endTimeStr;
    }
    public void setEndTimeStr(String endTimeStr) {
        this.endTimeStr = endTimeStr;
    }
    public Map<String,Object> getMap() {
        return map;
    }
    public void setMap(Map<String,Object> map) {
        this.map = map;
    }
    public String getOperatingid() {
        return operatingid;
    }
    public void setOperatingid(String operatingid) {
        this.operatingid = operatingid;
    }
    
    
    

    
    
    
}
