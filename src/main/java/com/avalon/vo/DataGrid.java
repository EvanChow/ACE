package com.avalon.vo;

import java.util.ArrayList;
import java.util.List;

/**
 * 
 * @类名: DataGrid
 * @功能描述:服务端分页返回数据
 * @类创建人: Evan
 * @类创建时间： 2017-1-3 下午04:41:44
 */
public class DataGrid {
    private int draw=0;
    private int recordsTotal=0;
    private int recordsFiltered=0;
    private List data=new ArrayList();
    public int getDraw() {
        return draw;
    }
    public void setDraw(int draw) {
        this.draw = draw;
    }
    public int getRecordsTotal() {
        return recordsTotal;
    }
    public void setRecordsTotal(int recordsTotal) {
        this.recordsTotal = recordsTotal;
    }
    public int getRecordsFiltered() {
        return recordsFiltered;
    }
    public void setRecordsFiltered(int recordsFiltered) {
        this.recordsFiltered = recordsFiltered;
    }
    public List getData() {
        return data;
    }
    public void setData(List data) {
        this.data = data;
    }
    
    
    
    
}
