package com.avalon.vo;

import java.util.Date;

public class View {
    private String title;// 标题内容(例如”September 2009″ or “Sep 7 – 13 2009″)
    private Date start;// Date类型, 该view下的第一天.
    private Date end;// Date类型, 该view下的最后一天.  由于是一个闭合的值, 所以, 比如在month view下, 10月这个月份, 那么end对应的应该是11月的第一天.

    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public Date getStart() {
        return start;
    }
    public void setStart(Date start) {
        this.start = start;
    }
    public Date getEnd() {
        return end;
    }
    public void setEnd(Date end) {
        this.end = end;
    }
    
    
    
}
