package com.fjh.myspringboot.config;

import com.fjh.myspringboot.mapper.config.ScheduleTaskMapper;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.Trigger;
import org.springframework.scheduling.TriggerContext;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.SchedulingConfigurer;
import org.springframework.scheduling.config.ScheduledTaskRegistrar;
import org.springframework.scheduling.support.CronTrigger;

import java.time.LocalDateTime;
import java.util.Date;


@Configuration      // 1.主要用于标记配置类，兼备Component的效果。
// @EnableScheduling   // 2.开启定时任务，写在启动类中
public class ScheduleTask implements SchedulingConfigurer {

    @Value("${schedulertask.enable}")
    private Boolean enable;

    private ScheduleTaskMapper scheduleTaskMapper;
    // private CtrDetailService ctrDetailService;

    public ScheduleTask(ScheduleTaskMapper scheduleTaskMapper
                        // CtrDetailService ctrDetailService
                        ) {
        this.scheduleTaskMapper = scheduleTaskMapper;
        // this.ctrDetailService = ctrDetailService;
    }


    // 静态执行 - 单线程 - 每个Scheduled都受一个时间所影响，且修改后需要重启程序
//    @Scheduled(cron = "0/5 * * * * ?") // 指定时间间隔，例如：5秒（fixedRate=5000）
//    private void configureTasks() {
//        System.err.println("执行静态定时任务时间: " + LocalDateTime.now());
//    }


    @Override
    public void configureTasks(ScheduledTaskRegistrar taskRegistrar) {

        // id = 1, 取消30天前的置顶指令

        // 1.添加任务内容(Runnable)
        taskRegistrar.addTriggerTask(
                () -> {
                    // if (ctrDetailService.cancelTopLast30d()){
                    if (true){
                        System.out.println("1.OK:---定时任务执行成功: " + LocalDateTime.now());
                    }
                },
                // 2.设置执行周期(Trigger)
                triggerContext -> {
                    // 2.1 从数据库获取执行周期
                    String cron = scheduleTaskMapper.getCron(1);
                    // 2.3 合法性校验
                    if (!enable) {
                        return null;
                    }
                    // 2.3 返回执行周期(Date)
                    return new CronTrigger(cron).nextExecutionTime(triggerContext);
                }
        );


        // id = 2, xxxxxxxx

//        // 1.定时任务要执行的方法
//        Runnable task = new Runnable() {
//            @Override
//            public void run() {
//                System.out.println("在这里执行定时任务" + LocalDateTime.now());
//            }
//        };
//        // 2.调度的时间控制
//        Trigger trigger = new Trigger() {
//            @Override
//            public Date nextExecutionTime(TriggerContext triggerContext) {
//                CronTrigger cronTrigger = new CronTrigger(scheduleTaskMapper.getCron(1));
//                return cronTrigger.nextExecutionTime(triggerContext);
//            }
//        };
//        taskRegistrar.addTriggerTask(task, trigger);




    }


}
