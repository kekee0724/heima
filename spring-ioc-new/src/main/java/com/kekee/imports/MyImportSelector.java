package com.kekee.imports;

import com.kekee.beans.OtherBean2;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ImportSelector;
import org.springframework.core.type.AnnotationMetadata;
import org.springframework.core.type.MethodMetadata;
import org.springframework.util.MultiValueMap;

import java.util.Arrays;
import java.util.Map;
import java.util.Set;
import java.util.function.Predicate;

public class MyImportSelector implements ImportSelector {
    @Override
    public String[] selectImports(AnnotationMetadata importingClassMetadata) {
        //参数AnnotationMetadata，该对象内部封装是当前使用了@Import注解的类上的其他注解元信息
        Map<String, Object> annotationAttributes = importingClassMetadata.getAnnotationAttributes(ComponentScan.class.getName());
        String[] basePackages = (String[]) annotationAttributes.get("basePackages");
//        annotationAttributes.forEach((name, value) -> System.out.println(name + "==" + value));
        System.out.println(Arrays.toString(basePackages));

        // 返回的数组封装是需要被注册到Spring容器中的Bean的全限定名
        return new String[]{
                OtherBean2.class.getName()
        };
    }

//    @Override
//    public Predicate<String> getExclusionFilter() {
//        return ImportSelector.super.getExclusionFilter();
//    }
}
