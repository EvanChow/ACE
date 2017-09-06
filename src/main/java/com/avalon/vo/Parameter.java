package com.avalon.vo;

public class Parameter {
    
    //private String _;
    private int iColumns; //有多少列
    private int iDisplayLength;//分页长度,默认为10,单页显示的数据的条数，如果bLengthChange属性被开启，终端用户可以通过一个弹出菜单重写该数值
    private int iDisplayStart;//分页起始位置
    private String iSortingCols;//排序字段
    private String sColumns;
    private int sEcho;
    
    private boolean bRegex;//为true的时候，搜索字符串会被当作正则表达式，当为false（默认）的时候，会被直接当作一个字符串
    //private boolean bSearchable; //* 默认为true 是否在列上应用过滤
    //private boolean bSortable;//是否在某一列上开启排序
    //private String mDataProp;//对日期类型有些用处
    private String sSearch;//
//    public String get_() {
//        return _;
//    }
//    public void set_(String _) {
//        this._ = _;
//    }
    public int getiColumns() {
        return iColumns;
    }
    public void setiColumns(int iColumns) {
        this.iColumns = iColumns;
    }
    public int getiDisplayLength() {
        return iDisplayLength;
    }
    public void setiDisplayLength(int iDisplayLength) {
        this.iDisplayLength = iDisplayLength;
    }
    public int getiDisplayStart() {
        return iDisplayStart;
    }
    public void setiDisplayStart(int iDisplayStart) {
        this.iDisplayStart = iDisplayStart;
    }
    public String getiSortingCols() {
        return iSortingCols;
    }
    public void setiSortingCols(String iSortingCols) {
        this.iSortingCols = iSortingCols;
    }
    public String getsColumns() {
        return sColumns;
    }
    public void setsColumns(String sColumns) {
        this.sColumns = sColumns;
    }
    public int getsEcho() {
        return sEcho;
    }
    public void setsEcho(int sEcho) {
        this.sEcho = sEcho;
    }
    public boolean isbRegex() {
        return bRegex;
    }
    public void setbRegex(boolean bRegex) {
        this.bRegex = bRegex;
    }
    public String getsSearch() {
        return sSearch;
    }
    public void setsSearch(String sSearch) {
        this.sSearch = sSearch;
    }
   
    public String  toString(){
        return "请求值:iColumns="+this.iColumns+",iDisplayLength="+this.iDisplayLength+
        ",iDisplayStart="+this.iDisplayStart+",iSortingCols="+this.iSortingCols+",sEcho="+this.sEcho+",sColumns="+this.sColumns;
    }
    
    
}
