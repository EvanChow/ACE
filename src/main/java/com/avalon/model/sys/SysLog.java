/*
当你想在你的代码中找到一个错误时，这很难；当你认为你的代码是不会有错误时，这就更难了。                                                          ——Steve McConnell
 */

package com.avalon.model.sys;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.Date;
import com.avalon.vo.Paging;

public class SysLog extends Paging{  
      
	    /**  
	     *   
	     */ 
	    private String id;  
	    /**  
	     * 请求  
	     */ 
	    private String action;  
	    /**  
	     * 节点  
	     */ 
	    private String note;  
	    /**  
	     * 操作人  
	     */ 
	    private String operatingid;  
	    /**  
	     * 描述  
	     */ 
	    private String msg;  
	    /**  
	     * 创建时间  
	     */ 
	    private Date createtime;  
	    /**  
	     * 更新时间  
	     */ 
	    private Date updatetime;  
 
	    public void setId(String id) {  
	        this.id = id;  
	    }
	      
	    public String getId() {  
	        return this.id;  
	    }  
	    public void setAction(String action) {  
	        this.action = action;  
	    }
	      
	    public String getAction() {  
	        return this.action;  
	    }  
	    public void setNote(String note) {  
	        this.note = note;  
	    }
	      
	    public String getNote() {  
	        return this.note;  
	    }  
	    public void setOperatingid(String operatingid) {  
	        this.operatingid = operatingid;  
	    }
	      
	    public String getOperatingid() {  
	        return this.operatingid;  
	    }  
	    public void setMsg(String msg) {  
	        this.msg = msg;  
	    }
	      
	    public String getMsg() {  
	        return this.msg;  
	    }  
		   public String getCreatetimeString() {  
		        return new SimpleDateFormat("YYYYMMDDHHmmss").format(this.createtime==null?new Date():this.createtime);
		   }   
	    public void setCreatetime(Date createtime) {  
	        this.createtime = createtime;  
	    }
	      
	    public Date getCreatetime() {  
	        return this.createtime;  
	    }  
		   public String getUpdatetimeString() {  
		        return new SimpleDateFormat("YYYYMMDDHHmmss").format(this.updatetime==null?new Date():this.updatetime);
		   }   
	    public void setUpdatetime(Date updatetime) {  
	        this.updatetime = updatetime;  
	    }
	      
	    public Date getUpdatetime() {  
	        return this.updatetime;  
	    }  
 
}