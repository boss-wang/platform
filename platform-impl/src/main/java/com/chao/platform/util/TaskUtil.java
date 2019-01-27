package com.chao.platform.util;

import org.quartz.*;
import org.quartz.impl.StdSchedulerFactory;

public class TaskUtil
{
    private static Scheduler scheduler;

    static
    {
        try
        {
            SchedulerFactory sfact = new StdSchedulerFactory();
            scheduler = sfact.getScheduler();
            scheduler.start();
        }
        catch (SchedulerException e)
        {
            e.printStackTrace();
        }
    }


    public static void executeTask(Class taskClass,String jobName,String triggerName, String cron)
    {
        JobDetail jobDetail = JobBuilder.newJob(taskClass)
                .withIdentity(jobName,"jobGroup")
                .build();

        Trigger trigger = TriggerBuilder
                .newTrigger()
                .withIdentity(triggerName,"triggerGroup")
                .withSchedule(
                        CronScheduleBuilder.cronSchedule(cron)
                )
                .build();

        try {
            scheduler.scheduleJob(jobDetail,trigger);
        } catch (SchedulerException e) {
            e.printStackTrace();
        }
    }

    public static void modifyJobTime(String triggerName, String cron) {
        try {
            TriggerKey triggerKey = TriggerKey.triggerKey(triggerName, "triggerGroup");

            CronTrigger trigger = (CronTrigger) scheduler.getTrigger(triggerKey);

            if (trigger == null) {
                return;
            }

            String oldTime = trigger.getCronExpression();

            if (!oldTime.equalsIgnoreCase(cron))
            {
                // 触发器
                TriggerBuilder<Trigger> triggerBuilder = TriggerBuilder.newTrigger();
                // 触发器名,触发器组
                triggerBuilder.withIdentity(triggerName, "triggerGroup");
                // 触发器时间设定
                triggerBuilder.withSchedule(CronScheduleBuilder.cronSchedule(cron));
                // 创建Trigger对象
                trigger = (CronTrigger) triggerBuilder.build();
                // 方式一 ：修改一个任务的触发时间
                scheduler.rescheduleJob(triggerKey, trigger);
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static void removeJob(String jobName, String triggerName)
    {

        TriggerKey triggerKey = TriggerKey.triggerKey(triggerName, "triggerGroup");

        try {
            scheduler.pauseTrigger(triggerKey);
            scheduler.unscheduleJob(triggerKey);
            scheduler.deleteJob(JobKey.jobKey(jobName,"jobGroup"));
        } catch (SchedulerException e) {
            e.printStackTrace();
        }
    }


}
