package com.avalon.service.quartz;

import java.util.ArrayList;
import java.util.List;

import org.quartz.CronTrigger;
import org.quartz.JobDetail;
import org.quartz.JobExecutionContext;
import org.quartz.JobKey;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.Trigger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.avalon.model.quartz.Schedulejob;
import com.avalon.util.ScheduleUtils;

@Service
public class ScheduleService {
    
    @Autowired
    private Scheduler scheduler;
    @Autowired
    private SchedulejobService schedulejobService;
    
    public void init() {
        List<Schedulejob> scheduleJobs = schedulejobService.getAll(null);
        System.out.println(scheduleJobs);
        for (Schedulejob scheduleJob : scheduleJobs) {
            CronTrigger cronTrigger;
            try {
                cronTrigger = ScheduleUtils.getCronTrigger(scheduler, scheduleJob.getName(), scheduleJob.getJobgroup());
                if (cronTrigger!=null) {
//                  ScheduleUtils.deleteScheduleJob(scheduler, scheduleJob.getName(), scheduleJob.getGroup());
                    // 已存在，那么更新相应的定时设置
                    ScheduleUtils.updateScheduleJob(scheduler, scheduleJob);
                }else {
                    ScheduleUtils.createScheduleJob(scheduler, scheduleJob);
                }
                
                /*if (scheduleJob.getIsSync()) {
                    if (BaseUtil.isEmpty(scheduleJob.getClassNameSync())) {
                        continue;
                    }
                }else {
                    if (BaseUtil.isEmpty(scheduleJob.getClassName())) {
                        continue;
                    }
                }*/
                
                
                /*// 不存在，创建一个
                if (cronTrigger == null) {
                    
                } else {
                    // 已存在，那么更新相应的定时设置
                    ScheduleUtils.updateScheduleJob(scheduler, scheduleJob);
                }*/
            } catch (SchedulerException e) {
                e.printStackTrace();
            }
        }
    }

    public List<Schedulejob> queryExecutingJobList() {
        try {
            List<JobExecutionContext> executingJobs = scheduler.getCurrentlyExecutingJobs();;
            /*while (true) {
                executingJobs = scheduler.getCurrentlyExecutingJobs();
                if (executingJobs.size()>0) {
                    break;
                }
            }*/
            
            List<Schedulejob> jobList = new ArrayList<Schedulejob>(
                    executingJobs.size());
            for (JobExecutionContext executingJob : executingJobs) {
                Schedulejob job = new Schedulejob();
                JobDetail jobDetail = executingJob.getJobDetail();
                JobKey jobKey = jobDetail.getKey();
                Trigger trigger = executingJob.getTrigger();
                job.setName(jobKey.getName());
                job.setJobgroup(jobKey.getGroup());
                job.setJobTrigger(trigger.getKey().getName());
                Trigger.TriggerState triggerState = scheduler.getTriggerState(trigger.getKey());
                job.setStatus(triggerState.name());
                if (trigger instanceof CronTrigger) {
                    CronTrigger cronTrigger = (CronTrigger) trigger;
                    String cronExpression = cronTrigger.getCronExpression();
                    job.setCronExpression(cronExpression);
                }
                jobList.add(job);
            }
            return jobList;
        } catch (SchedulerException e) {
            e.printStackTrace();
            return null;
        }

    }
    
    
}
