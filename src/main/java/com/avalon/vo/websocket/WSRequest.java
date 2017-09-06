package com.avalon.vo.websocket;

import com.avalon.util.SysUtil;

/**
 * 
 * @类名: WSRequest
 * @功能描述:websocket请求数据封装
 * @类创建人: Evan
 * @类创建时间： 2016-11-2 上午11:00:45
 */
public class WSRequest {
    private String url;//请求处理路径
    private String dataType;//数据类型
    private String data;//数据
    private String wsid;//session id
    
    public WSRequest(){
        
    }

    public WSRequest(String url,String dataType,String data,String wsid){
        this.url=url;
        this.dataType=dataType;
        this.data=data;
        this.wsid=wsid;
    }
    
    public WSRequest(String url,String dataType,String data){
        this.url=url;
        this.dataType=dataType;
        this.data=data;
        this.wsid=SysUtil.createID("WS");
    }
    
    
    public String getUrl() {
        return url;
    }
    public void setUrl(String url) {
        this.url = url;
    }
    public String getDataType() {
        return dataType;
    }
    public void setDataType(String dataType) {
        this.dataType = dataType;
    }
    public String getData() {
        return data;
    }
    public void setData(String data) {
        this.data = data;
    }
    public String getWsid() {
        return wsid;
    }
    public void setWsid(String wsid) {
        this.wsid = wsid;
    }  
    
}
