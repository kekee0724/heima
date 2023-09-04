package com.kekee.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

@Configuration
@ComponentScan("com.kekee") // <context:component-scan base-package="com.kekee"/>
@EnableAspectJAutoProxy // <aop:aspectj-autoproxy/>
public class SpringConfig {
}
