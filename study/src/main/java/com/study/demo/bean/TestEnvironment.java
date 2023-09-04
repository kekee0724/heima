package com.study.demo.bean;

import org.springframework.beans.factory.annotation.QualifierAnnotationAutowireCandidateResolver;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.factory.config.BeanExpressionContext;
import org.springframework.beans.factory.config.DependencyDescriptor;
import org.springframework.beans.factory.support.DefaultListableBeanFactory;
import org.springframework.boot.context.properties.bind.PlaceholdersResolver;
import org.springframework.context.expression.StandardBeanExpressionResolver;
import org.springframework.core.env.Environment;
import org.springframework.core.env.StandardEnvironment;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.support.ResourcePropertySource;

import java.io.IOException;
import java.lang.reflect.Field;

//refresh12个步骤
//1.prepareRefresh - 做好准备工作
//2.obtainFreshBeanFactory - 创建或获取BeanFactory
//3. prepareBeanFactory - 准备BeanFactory
//4.postProcessBeanFactory - 子类扩展BeanFactory
//5.invokeBeanFactoryPostProcessors - 后处理器扩展BeanFactory
//6.registerBeanPostProcessors - 准备Bean后处理器
//7. initMessageSource - 为ApplicationContext提供国际化功能
//8. initApplicationEventMulticaster - 为ApplicationContext提供事件发布器
//9. onRefresh - 留给子类扩展
//10. registerListeners -为ApplicationContext准备监听器
//11. finishBeanFactoryInitialization -初始化单例Bean,执行Bean后处理器扩展
//12. finishRefresh - 准备生命周期管理器,发布ContextRefreshed事件
public class TestEnvironment {
    public static void main(String[] args) throws NoSuchFieldException, IOException {

//1)获得@Valve的值
System.out.println("================>仅获取@Value值");
QualifierAnnotationAutowireCandidateResolver resolver = new QualifierAnnotationAutowireCandidateResolver();
Object name = resolver.getSuggestedValue(new DependencyDescriptor(Bean1.class.getDeclaredField("name"), false));
System.out.println(name);

//2)解析@Valve的值
System.out.println("==============>获取@Value值,并解析${}");
Object javaHome = resolver.getSuggestedValue(new DependencyDescriptor(Bean1.class.getDeclaredField("javaHome"), false));
System.out.println(javaHome);
System.out.println(getEnvironment().resolvePlaceholders(javaHome.toString()));

//3)解析SpEL表达式

System.out.println("================>获取@Valve值,并解析#{}");
Object expression = resolver.getSuggestedValue(new DependencyDescriptor(Bean1.class.getDeclaredField("expression"), false));
System.out.println(expression);
String x = getEnvironment().resolvePlaceholders(expression.toString());
System.out.println(x);
System.out.println(new StandardBeanExpressionResolver().evaluate(x, new BeanExpressionContext(new DefaultListableBeanFactory(), null)));

    }

    private static Environment getEnvironment() throws IOException {
StandardEnvironment env = new StandardEnvironment();
env.getPropertySources().addLast(new ResourcePropertySource("jdbc", new ClassPathResource("jdbc.properties")));
return env;
    }

    static class Bean1 {
@Value("hello")
private String name;

@Value("${jdbc.username}")
private String javaHome;

@Value("#{'class version:' + '${java.class.version}'}")
private String expression;
    }
}
