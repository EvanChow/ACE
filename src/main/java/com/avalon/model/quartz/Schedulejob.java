/*
当你想在你的代码中找到一个错误时，这很难；当你认为你的代码是不会有错误时，这就更难了。                                                          ——Steve McConnell
 */

package com.avalon.model.quartz;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.Date;
import com.avalon.vo.Paging;

public class Schedulejob extends Paging{  
      
    /**  
     * 任务id
     */ 
    private String id;  
    /**  
     * 任务名称
     */ 
    private String name;  
    /**  
     * 任务别名
     */ 
    private String aliasName;  
    /**  
     * 任务分组
     */ 
    private String jobgroup;  
    /**  
     * 触发器
     */ 
    private String jobTrigger;  
    /**  
     * 任务状态
     */ 
    private String status;  
    /**  
     * 任务运行时间表达式
     */ 
    private String cronExpression;  
    /**  
     * 
     */ 
    private String isSync;  
    /**  
     * 任务描述
     */ 
    private String description;  
    /**  
     * 创建时间
     */ 
    private Date createtime;  
    /**  
     * 修改时间
     */ 
    private Date modifytime;  
    /**  
     * 要执行的任务类
     */ 
    private String classname;  
    /**  
     * 要执行的任务类
     */ 
    private String classnamesync;  

    public void setId(String id) {  
        this.id = id;  
    }
      
    public String getId() {  
        return this.id;  
    }  
    public void setName(String name) {  
        this.name = name;  
    }
      
    public String getName() {  
        return this.name;  
    }  
    public void setAliasName(String aliasName) {  
        this.aliasName = aliasName;  
    }
      
    public String getAliasName() {  
        return this.aliasName;  
    }  
    public void setJobgroup(String jobgroup) {  
        this.jobgroup = jobgroup;  
    }
      
    public String getJobgroup() {  
        return this.jobgroup;  
    }  
    public void setJobTrigger(String jobTrigger) {  
        this.jobTrigger = jobTrigger;  
    }
      
    public String getJobTrigger() {  
        return this.jobTrigger;  
    }  
    public void setStatus(String status) {  
        this.status = status;  
    }
      
    public String getStatus() {  
        return this.status;  
    }  
    public void setCronExpression(String cronExpression) {  
        this.cronExpression = cronExpression;  
    }
      
    public String getCronExpression() {  
        return this.cronExpression;  
    }  
    public void setIsSync(String isSync) {  
        this.isSync = isSync;  
    }
      
    public String getIsSync() {  
        return this.isSync;  
    }  
    public void setDescription(String description) {  
        this.description = description;  
    }
      
    public String getDescription() {  
        return this.description;  
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
       public String getModifytimeString() {  
            return new SimpleDateFormat("YYYYMMDDHHmmss").format(this.modifytime==null?new Date():this.modifytime);
       }   
    public void setModifytime(Date modifytime) {  
        this.modifytime = modifytime;  
    }
      
    public Date getModifytime() {  
        return this.modifytime;  
    }  
    public void setClassname(String classname) {  
        this.classname = classname;  
    }
      
    public String getClassname() {  
        return this.classname;  
    }  
    public void setClassnamesync(String classnamesync) {  
        this.classnamesync = classnamesync;  
    }
      
    public String getClassnamesync() {  
        return this.classnamesync;  
    }  

	    
	    public String toString(){
	        return "{id:"+id+",name:"+name+",aliasName:"+aliasName+",jobgroup:"+jobgroup+",status:"+status+",cronExpression:"+cronExpression+"}";
	    }
 
}