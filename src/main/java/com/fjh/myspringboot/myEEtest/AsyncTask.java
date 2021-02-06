package com.fjh.myspringboot.myEEtest;

import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.stereotype.Component;


@EnableAsync
@Component
public class AsyncTask {

    @Async
    public void waitThread() {
        try {
            Thread.sleep(1000*3);
        } catch (Exception ignored) {

        }
        System.out.println("wait-end");
    }
}
