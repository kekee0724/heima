package cn.bipark.reco;

import cn.bipark.reco.core.autoconfigure.DynamicAutoConfigurationImportSelector;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Import;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistration;
import org.springframework.boot.autoconfigure.web.servlet.WebMvcAutoConfiguration;
import cn.bipark.reco.office.driver.Loader;
//import cn.bipark.reco.order.web.handler;

@EnableScheduling
@EnableCaching
@SpringBootApplication
@Import({DynamicAutoConfigurationImportSelector.class})
public class RecoApplication extends SpringBootServletInitializer {
    public RecoApplication() {
    }

    public static void main(String[] args) {
        SpringApplication.run(RecoApplication.class, args);
    }

    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(RecoApplication.class);
    }
}
