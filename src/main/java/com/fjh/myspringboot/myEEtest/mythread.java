package com.fjh.myspringboot.myEEtest;

import lombok.SneakyThrows;

public class mythread{

   private static void threadtest() {
       Runnable runnable = new Runnable() {
           // @SneakyThrows
           @Override
           public void run() {
               // Thread.sleep(10000);
               System.out.println("我在执行");
           }
       };
       Thread thread = new Thread(runnable);
       thread.start();
    }


    public static void main(String[] args) {
        System.out.println("开始执行");
        threadtest();
        System.out.println("结果返回");
    }

}
