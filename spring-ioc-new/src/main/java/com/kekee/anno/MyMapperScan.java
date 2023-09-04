package com.kekee.anno;

import com.kekee.imports.MyImportBeanDefinitionRegistrar;
import org.springframework.context.annotation.Import;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

// 生命周期
@Retention(RetentionPolicy.RUNTIME)
// 作用范围
@Target(ElementType.TYPE)
@Import(MyImportBeanDefinitionRegistrar.class)
public @interface MyMapperScan {
}
