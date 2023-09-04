package com.study.demo.learn;

import java.util.Scanner;

public class Test01 {
    public static void main(String[] args) {
//        A a = new A();
        B b = new B();
        System.out.println("请输入等级：");
        Scanner scanner = new Scanner(System.in);
        String grade = scanner.next();


        //write your code here......
        switch (grade) {
            case "A":
                System.out.println("优秀");
                break;
            case "B":
                System.out.println("良好");
                break;
            case "C":
                System.out.println("及格");
                break;
            case "D":
                System.out.println("不及格");
                break;
            default:
                System.out.println("未知等级");
        }
    }
}

class A {
    public A() {
        System.out.println("construct A");
        System.out.println(getClass().getName());
    }

    {
        System.out.println("A A");
    }

    static {
        System.out.println("static A");
    }
}

class B extends A {
    public B() {
        System.out.println("construct B");
        System.out.println(getClass().getName());
        System.out.println(hashCode());
    }

    {
        System.out.println("B B");
    }

    static {
        System.out.println("static B");
    }
}