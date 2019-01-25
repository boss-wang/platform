package com.chao.platform.util;

import org.quartz.*;
import org.quartz.impl.StdSchedulerFactory;

public class TaskUtil
{
    public static void executeTask(Class taskClass, String cron)
    {
        JobDetail jobDetail = JobBuilder.newJob(taskClass)
                .withIdentity("myJob","jobGroup")
                .build();

        Trigger trigger = TriggerBuilder
                .newTrigger()
                .withIdentity("myTrigger","triggerGroup")
                .withSchedule(
                        CronScheduleBuilder.cronSchedule(cron)
                )
                .build();
        try {
            SchedulerFactory sfact = new StdSchedulerFactory();
            Scheduler scheduler = sfact.getScheduler();
            scheduler.start();
            scheduler.scheduleJob(jobDetail,trigger);
        } catch (SchedulerException e) {
            e.printStackTrace();
        }
    }

}
