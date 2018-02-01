package com.avalon.service.quartz.factory;

import org.quartz.DisallowConcurrentExecution;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.beans.factory.annotation.Autowired;

import com.avalon.model.quartz.Schedulejob;


/**
 * 
 * @类名: JobFactory
 * @功能描述:任务工厂类,非同步
 * @类创建人: Evan
 * @类创建时间： 2018-1-22 下午04:29:50
 */
@DisallowConcurrentExecution
public class JobFactory implements Job {
    

    public void execute(JobExecutionContext context) throws JobExecutionException {

        Schedulejob scheduleJob = (Schedulejob) context.getMergedJobDataMap().get("jobParam");

        System.out.println("jobName:" + scheduleJob.getName() + "  " + scheduleJob);
    }
}
