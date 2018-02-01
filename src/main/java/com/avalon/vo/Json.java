package com.avalon.vo;

public class Json {
    private String id;
    private boolean success;
    private String msg;
    private String type;
    private Object data;
    
    public Json(){  
    }
    
    public Json(boolean success,String msg,Object data){
        this.success=success;
        this.msg=msg;
        this.data=data;
    }
    
    public Json(boolean success,String msg){
        this.success=success;
        this.msg=msg;
    }
    
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public boolean isSuccess() {
        return success;
    }
    public void setSuccess(boolean success) {
        this.success = success;
    }
    public String getMsg() {
        return msg;
    }
    public void setMsg(String msg) {
        this.msg = msg;
    }
    public String getType() {
        return type;
    }
    public void setType(String type) {
        this.type = type;
    }
    public Object getData() {
        return data;
    }
    public void setData(Object data) {
        this.data = data;
    }
    
}
