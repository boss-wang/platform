package com.chao.platform.task;

import lombok.extern.slf4j.Slf4j;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

@Slf4j
public class WashTask implements Job
{
    @Override
    public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException
    {
        System.out.println("开始执行任务");
    }
}
