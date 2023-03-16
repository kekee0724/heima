package cn.bipark.reco.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Configuration
@ComponentScan("cn.bipark.reco.controller")
@EnableWebMvc
public class SpringMvcConfig {
}
