package com.fjh.myspringboot.myEEtest;

import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

@Service
public class AsyncTask {

    @Async
    public void waitTask() {
        System.out.println("waitTask【开始】执行了");
        try{
            Thread.sleep(3000);
        } catch (Exception ignored){

        }
        System.out.println("waitTask【结束】执行了");
    }





}


