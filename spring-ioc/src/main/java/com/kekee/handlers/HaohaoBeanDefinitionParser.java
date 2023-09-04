package com.kekee.handlers;

import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.beans.factory.config.BeanDefinitionHolder;
import org.springframework.beans.factory.parsing.BeanComponentDefinition;
import org.springframework.beans.factory.parsing.CompositeComponentDefinition;
import org.springframework.beans.factory.support.BeanDefinitionRegistry;
import org.springframework.beans.factory.support.RootBeanDefinition;
import org.springframework.beans.factory.xml.BeanDefinitionParser;
import org.springframework.beans.factory.xml.ParserContext;
import org.springframework.context.annotation.AnnotationConfigUtils;
import org.w3c.dom.Element;

import java.util.Set;

public class HaohaoBeanDefinitionParser implements BeanDefinitionParser {
    @Override
    public BeanDefinition parse(Element element, ParserContext parserContext) {
        // 注入一个BeanPostProcessor
        BeanDefinition beanDefinition = new RootBeanDefinition();
        beanDefinition.setBeanClassName("com.kekee.processor.HaohaoBeanPostProcessor");
        BeanDefinitionRegistry registry = parserContext.getRegistry();
        registry.registerBeanDefinition("HaohaoBeanPostProcessor", beanDefinition);
        return null;
    }
}
