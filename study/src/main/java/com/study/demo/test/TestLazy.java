package com.study.demo.test;

import java.io.IOException;

public class TestLazy {
    private Class<?> myTaskClass;

    public static void main(String[] args) throws IOException {
        System.out.println("未用到 MyTask");
        System.in.read();

        System.out.println(MyTask.class);
        System.out.println("已加载 MyTask");
        TestLazy testLazy = new TestLazy();
        testLazy.myTaskClass = MyTask.class;
        System.in.read();

        MyTask myTask = new MyTask("t1");
        System.out.println("已初始化 MyTask");
        System.in.read();
    }
}
