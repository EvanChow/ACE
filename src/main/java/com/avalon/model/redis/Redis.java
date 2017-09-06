package com.avalon.model.redis;

import java.io.Serializable;

public class Redis implements Serializable{

    /**
     * Redis 数据存储模型
     */
    private static final long serialVersionUID = 7379385344531017869L;
    
    private String key;
    private String value;
    public Redis(){};
    public Redis(String key, String value){
        this.setKey(key);
        this.setValue(value);
    }
    
    public String getKey() {
        return key;
    }
    public void setKey(String key) {
        this.key = key;
    }
    public String getValue() {
        return value;
    }
    public void setValue(String value) {
        this.value = value;
    }
    
    @Override
    public String toString() {
        return "{key:"+key+",value:"+value+"}";
    }

}
