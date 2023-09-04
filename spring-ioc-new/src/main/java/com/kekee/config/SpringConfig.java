package com.kekee.config;

import com.alibaba.druid.pool.DruidDataSource;
import com.kekee.anno.MyMapperScan;
import com.kekee.beans.OtherBean;
import com.kekee.dao.UserDao;
import com.kekee.imports.MyImportBeanDefinitionRegistrar;
import com.kekee.imports.MyImportSelector;
import com.kekee.service.UserService;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.*;

import javax.sql.DataSource;

@Configuration // 标注当前类是一个配置类（替代配置文件）+ @Component
//<context:component-scan base-package="com.kekee"/>
@ComponentScan("com.kekee")
//<context:property-placeholder location="classpath*:jdbc.properties"/>
@PropertySource("classpath:jdbc.properties")
//<import resource=""></import>
//@Import(OtherBean.class)
@Import({MyImportSelector.class})
//Mapper的接口扫描
@MapperScan("com.kekee.mapper")
@MyMapperScan
public class SpringConfig {

    @Bean
    public DataSource dataSource(
            @Value("${jdbc.driver}") String driverClassName,
            @Value("${jdbc.url}") String url,
            @Value("${jdbc.username}") String username,
            @Value("${jdbc.password}") String password) {
        DruidDataSource dataSource = new DruidDataSource();
        dataSource.setDriverClassName(driverClassName);
        dataSource.setUrl(url);
        dataSource.setUsername(username);
        dataSource.setPassword(password);
        return dataSource;
    }

    @Bean
    public SqlSessionFactoryBean sqlSessionFactoryBean(DataSource dataSource) {
        SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
        sqlSessionFactoryBean.setDataSource(dataSource);
        return sqlSessionFactoryBean;
    }
}
