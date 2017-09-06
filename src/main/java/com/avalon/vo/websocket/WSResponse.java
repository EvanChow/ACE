package com.avalon.vo.websocket;

import com.alibaba.fastjson.JSON;

/**
 * 
 * @类名: WSResponse
 * @功能描述:websocket响应数据封装
 * @类创建人: Evan
 * @类创建时间： 2016-11-2 上午11:01:14
 */
public class WSResponse {
    private String action;//请求处理方法
    private String dataType;//数据类型
    private Object data;//数据
    private String wsid;//session id
    private boolean success;//成功，失败
    private String  msg;//描述
    private String code;//返回码
    public WSResponse(){
        
    }
    public WSResponse(String action,String dataType,String data,String wsid,boolean success,String  msg,String code){
        this.action=action;
        this.dataType=dataType;
        this.data=data;
        this.wsid=wsid;
        this.success=success;
        this.msg=msg;
        this.code=code;
    }
    
    public String getAction() {
        return action;
    }
    public void setAction(String action) {
        this.action = action;
    }
    public String getDataType() {
        return dataType;
    }
    public void setDataType(String dataType) {
        this.dataType = dataType;
    }
    public Object getData() {
        return data;
    }
    public void setData(Object data) {
        this.data = data;
    }
    public String getWsid() {
        return wsid;
    }
    public void setWsid(String wsid) {
        this.wsid = wsid;
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
    public String getCode() {
        return code;
    }
    public void setCode(String code) {
        this.code = code;
    }
    
    public String toJSONString(WSResponse response){
        return JSON.toJSONString(response);
    }
    
    
    
}
