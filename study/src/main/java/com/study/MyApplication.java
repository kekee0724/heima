package com.study;

import com.study.boot.MySpringApp;
import com.study.boot.MySpringBootApp;

@MySpringBootApp
//@SpringBootApplication
public class MyApplication {
//    @Bean
//    public DispatcherServlet dispatcherServlet(){
//        return new DispatcherServlet();
//    }

    public static void main(String[] args) {
        MySpringApp.run(MyApplication.class);
    }
}
