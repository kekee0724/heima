package com.study.demo.bean;

import com.study.demo.LoggerUtils;
import org.springframework.context.annotation.CommonAnnotationBeanPostProcessor;
import org.springframework.context.support.GenericApplicationContext;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.RequestScope;
import org.springframework.web.context.request.ServletWebRequest;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

public class TestScope {

    public static void main(String[] args) {
//        testSingletonScope();
//        testPrototypeScope();
        testRequestScope();
    }

    //单例bean从refresh被创建,到close被销毁,BeanFactory会记录哪些bean要调用销毁方法
    private static void testSingletonScope() {
        GenericApplicationContext context = new GenericApplicationContext();
        context.registerBean("bean1", Bean1.class);
        context.registerBean(CommonAnnotationBeanPostProcessor.class);
        context.refresh();
        context.close();
    }


    //多例bean从首次getBean被创建,到调用BeanFactory的destroyBean被销毁
    private static void testPrototypeScope() {
        GenericApplicationContext context = new GenericApplicationContext();
        context.registerBean("bean1", Bean1.class, bd -> bd.setScope("prototype"));
        context.registerBean(CommonAnnotationBeanPostProcessor.class);
        context.refresh();

        Bean1 bean = context.getBean(Bean1.class);
        //没谁记录该bean要调用销毁方法,需要我们自行调用
        context.getDefaultListableBeanFactory().destroyBean(bean);

        context.close();
    }

    //request bean首次getBean被创建,到request结束前被销毁
    private static void testRequestScope() {
        GenericApplicationContext context = new GenericApplicationContext();
        context.getDefaultListableBeanFactory().registerScope("request", new RequestScope());
        context.registerBean("bean1", Bean1.class, bd -> bd.setScope("request"));
        context.registerBean(CommonAnnotationBeanPostProcessor.class);
        context.refresh();

        for (int i = 0; i < 2; i++) {
            new Thread(() -> {
                MockHttpServletRequest request = new MockHttpServletRequest(); //每个webRequest对象会记录哪些bean要调用销毁方法
                ServletWebRequest webRequest = new ServletWebRequest(request);
                RequestContextHolder.setRequestAttributes(webRequest);

                Bean1 bean = context.getBean(Bean1.class);
                LoggerUtils.get().debug("{}", bean);
                LoggerUtils.get().debug("{}", request.getAttribute("bean1"));

                //request请求结束前调用这些销毁方法
                webRequest.requestCompleted();
            }).start();
        }
    }

    static class Bean1 {
        @PostConstruct
        public void init() {
            LoggerUtils.get().debug("{} - init");
        }

        @PreDestroy
        public void destroy() {
            LoggerUtils.get().debug("{} - destroy");
        }

    }
}
