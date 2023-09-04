package com.study.demo.test;


import com.study.demo.LoggerUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class MyTask implements Runnable {
//    private static Log log = LogFactory.getLog(MyTask.class);
    static int a = 0x77;
    static {
        System.out.println("MyTask.class init");
    }
    static int b = 0x88;
    static final int c = 0x99;
    int d = 0x55;
    int e = 0x66;

    private final String name;
    private final long duration;

    public MyTask(String name) {
        this(name, 0);
    }

    public MyTask(String name, long duration) {
        this.name = name;
        this.duration = duration;
    }

    @Override
    public void run() {
        try {
            LoggerUtils.get().debug("running..." + this);
//            log.debug("running..." + this);
            Thread.sleep(duration);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    @Override
    public String toString() {
        return "MyTask(" + name + ")";
    }
}
