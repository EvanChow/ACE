package com.avalon.model.im;

public class IMResult {
    private int code=0;
    private String msg;
    private IMData data;
    public int getCode() {
        return code;
    }
    public void setCode(int code) {
        this.code = code;
    }
    public String getMsg() {
        return msg;
    }
    public void setMsg(String msg) {
        this.msg = msg;
    }
    public IMData getData() {
        return data;
    }
    public void setData(IMData data) {
        this.data = data;
    }
    
    
}
