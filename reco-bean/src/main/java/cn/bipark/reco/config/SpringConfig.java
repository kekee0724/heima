package cn.bipark.reco.config;

import org.springframework.context.annotation.*;

@Configuration
@ComponentScan("cn.bipark.reco")
@EnableAspectJAutoProxy
@PropertySource("classpath:jdbc.properties")
@Import({JdbcConfig.class, MybatisConfig.class})
public class SpringConfig {
}
