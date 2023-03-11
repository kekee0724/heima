package cn.bipark.reco;

import cn.bipark.reco.core.web.api.BaseController;
import io.swagger.annotations.Api;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.context.annotation.ClassPathScanningCandidateComponentProvider;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.core.io.support.ResourcePatternResolver;
import org.springframework.core.type.classreading.CachingMetadataReaderFactory;
import org.springframework.core.type.classreading.MetadataReader;
import org.springframework.core.type.classreading.MetadataReaderFactory;
import org.springframework.core.type.filter.AnnotationTypeFilter;
import org.springframework.core.type.filter.AssignableTypeFilter;
import org.springframework.core.type.filter.TypeFilter;
import org.springframework.util.ClassUtils;

import java.io.IOException;
import java.util.*;

public class RpcClassScanner {

    private static final ResourcePatternResolver resourcePatternResolver = new PathMatchingResourcePatternResolver();
    static final Logger logger = LoggerFactory.getLogger(RpcClassScanner.class);
    private static final String RESOURCE_PATTERN = "/**/*.class";
    private static final Set<Class<?>> classSet = new HashSet<>();
    private static final TypeFilter typeFilter = new AnnotationTypeFilter(Api.class, false, true);


    public static void main(String[] args) throws IOException, ClassNotFoundException {
        scanPackage();
        /*List<String> packagesToScan = new ArrayList<>();
        Collections.addAll(packagesToScan, "cn.bipark.reco");
        getClassSet(packagesToScan);*/
    }

    private static void scanPackage() {
        ClassPathScanningCandidateComponentProvider provider = new ClassPathScanningCandidateComponentProvider(false);
        provider.addIncludeFilter(new AssignableTypeFilter(Object.class));
        // scan in cn.bipark.reco
        Set<BeanDefinition> components = provider.findCandidateComponents("cn.bipark.reco");
        StringBuffer buffer = new StringBuffer();
        for (BeanDefinition component : components) {
            try {
                Class<?> clz = Class.forName(component.getBeanClassName());
                Api api = clz.getAnnotation(Api.class);
                if (api != null) {
                    buffer.append(api.tags()[0]);
                    buffer.append(" ");
                }
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            // TODO 自己的处理逻辑
        }
        System.out.println(buffer);
    }

    /**
     * 将符合条件的Bean以Class集合的形式返回
     *
     * @return
     * @throws IOException
     * @throws ClassNotFoundException
     */
    public static Set<Class<?>> getClassSet(List<String> packagesToScan) throws IOException, ClassNotFoundException {
        classSet.clear();
        if (!packagesToScan.isEmpty()) {
            for (String pkg : packagesToScan) {
                String pattern = ResourcePatternResolver.CLASSPATH_ALL_URL_PREFIX + ClassUtils.convertClassNameToResourcePath(pkg) + RESOURCE_PATTERN;
                Resource[] resources = resourcePatternResolver.getResources(pattern);
                MetadataReaderFactory readerFactory = new CachingMetadataReaderFactory(resourcePatternResolver);
                for (Resource resource : resources) {
                    if (resource.isReadable()) {
                        MetadataReader reader = readerFactory.getMetadataReader(resource);
                        String className = reader.getClassMetadata().getClassName();
                        if (matchesEntityTypeFilter(reader, readerFactory)) {
                            Class<?> clz = Class.forName(className);
                            Api api = clz.getAnnotation(Api.class);
                            ConditionalOnProperty annotation = clz.getAnnotation(ConditionalOnProperty.class);
                            if (api != null && (annotation == null || "reco.platform.mobileapi".equals(annotation.prefix()))) {
                                System.out.print(api.tags()[0] + " ");
                                System.out.println(clz.getName()
                                        .replaceAll("cn\\.bipark\\.reco\\.", "")
                                        .replaceAll("\\.web\\.mobileapi\\.", " ")
                                        .replaceAll("\\.web\\.api\\.", " ")
                                        .replaceAll("\\.web\\.webapi\\.", " "));
                            }
                            classSet.add(clz);
//                            logger.info("找到自动发布或代理接口：" + className);
                        }
                    }
                }
            }
        }
        return classSet;
    }

    private static boolean matchesEntityTypeFilter(MetadataReader reader, MetadataReaderFactory readerFactory) throws IOException {
        return typeFilter.match(reader, readerFactory);
    }


}
