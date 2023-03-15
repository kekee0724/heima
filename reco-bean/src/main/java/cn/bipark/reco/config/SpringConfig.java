package cn.bipark.reco.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

@Configuration
@ComponentScan("cn.bipark.reco")
@EnableAspectJAutoProxy
public class SpringConfig {
}
