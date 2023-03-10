package cn.bipark.reco;

import cn.bipark.reco.core.model.entity.Entity;
import cn.hutool.core.util.StrUtil;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.ClassPathScanningCandidateComponentProvider;
import org.springframework.core.type.filter.AssignableTypeFilter;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class SqlGenerator {
    public static Map javaProperty2SqlColumnMap = new HashMap();

    private static final Logger logger = LoggerFactory.getLogger(SqlGenerator.class);

    public static void main(String[] args) {
        findClasses("cn.bipark.reco");
    }

    static {
        javaProperty2SqlColumnMap.put("Byte", "tinyint");
        javaProperty2SqlColumnMap.put("Short", "smallint");
        javaProperty2SqlColumnMap.put("Integer", "int");
        javaProperty2SqlColumnMap.put("Long", "bigint");
        javaProperty2SqlColumnMap.put("BigDecimal", "decimal(20,4)");
        javaProperty2SqlColumnMap.put("Double", "double precision");
        javaProperty2SqlColumnMap.put("Float", "float");
        javaProperty2SqlColumnMap.put("Boolean", "bit(1)");
        javaProperty2SqlColumnMap.put("Timestamp", "datetime");
        javaProperty2SqlColumnMap.put("Date", "datetime");
        javaProperty2SqlColumnMap.put("String", "varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci");
    }

    /**
     * 根据实体类生成建表语句
     *
     * @param clz       全类名
     * @param tableName 磁盘路径  如 : d:/workspace/
     * @author
     * @date
     */
    public static String generateSql(Class clz, String tableName) {
        Field[] fields = clz.getDeclaredFields();
        ApiModel apiModel = (ApiModel) clz.getAnnotation(ApiModel.class);
        String tableComment = apiModel != null ? apiModel.value().trim() : null;
        logger.info("类名:{} 表注释:{}", clz, apiModel != null ? tableComment : null);
        String param;
        String column;
        StringBuilder sql;
        sql = new StringBuilder(50);
        if (tableName == null || ("").equals(tableName)) {
            tableName = clz.getName();
            tableName = tableName.substring(tableName.lastIndexOf(".") + 1);
        }
        sql.append("\n\n/*========= " + tableName + " ==========*/\n");
        sql.append("DROP TABLE IF EXISTS `" + StrUtil.toUnderlineCase(tableName) + "`; \n");
        sql.append("CREATE TABLE `").append(StrUtil.toUnderlineCase(tableName)).append("` ( \n");
        String keyField = "";
        for (Field filed : fields) {
            column = filed.getName();
            ApiModelProperty annotation = filed.getAnnotation(ApiModelProperty.class);
            NotNull nonAnnotation = filed.getAnnotation(NotNull.class);
            NotBlank blankAnnotation = filed.getAnnotation(NotBlank.class);
            logger.info("字段:{}", annotation != null ? annotation.value() : null);
            if (("serialVersionUID").equals(column)) {
                continue;
            }
            //默认第一个是主键
            if ("".equals(keyField)) {
                keyField = column;
            }
            //id是主键
            if ("id".equals(column)) {
                keyField = column;
            }
            param = filed.getType().getSimpleName();
            //将大写字母转小写，并添加下划线
            column = StrUtil.toUnderlineCase(column);
            if (StringUtils.isNotEmpty((String) javaProperty2SqlColumnMap.get(param))) {
                sql.append("`" + column + "`");
                sql.append(" ").append(javaProperty2SqlColumnMap.get(param));
                if (nonAnnotation != null || blankAnnotation != null || (annotation != null && annotation.required())) {
                    sql.append(" not null");
                }
                if (annotation != null && annotation.value() != null) {
                    sql.append(" comment '" + annotation.value().trim() + "'");
                }
                sql.append(",\n");
            } else {
                logger.error(param);
            }
        }
        sql.append("PRIMARY KEY (`" + keyField + "`) USING BTREE,");
        sql.append("\nINDEX `" + keyField + "`(`" + keyField + "`) USING BTREE ) ");
        sql.append("\nENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci");
        if (apiModel != null && StringUtils.isNotEmpty(tableComment)) {
            sql.append(" comment '" + tableComment + "'");
        }
        sql.append(";");
        if (!"id".equals(keyField)) return "\n\n/*========= " + tableName + " ==========*/\n";
        else return sql.toString();
    }

    public static void findClasses(String packageName) {
        ClassPathScanningCandidateComponentProvider provider = new ClassPathScanningCandidateComponentProvider(false);
        provider.addIncludeFilter(new AssignableTypeFilter(Entity.class));
        // scan in cn.bipark.reco
        Set<BeanDefinition> components = provider.findCandidateComponents(packageName);
        StringBuffer sqls = new StringBuffer();
        for (BeanDefinition component : components) {
            try {
                Class cls = Class.forName(component.getBeanClassName());
//                logger.info(cls.getName());
                String sql = generateSql(cls, "");
                sqls.append(sql);
//                System.out.println(sql);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            // TODO 自己的处理逻辑
        }
//        System.out.println(sqls);
        StringToSql(sqls.toString(), "./sql/reco_boot_ipark.sql");
    }

    /**
     * 将string 写入sql文件
     *
     * @param str
     * @param path
     * @author
     * @date
     */
    public static void StringToSql(String str, String path) {
        try {
            //文件路径（路径+文件名）
            File file = new File(path);
            //文件不存在则创建文件，先创建目录
            if (!file.exists()) {
                File dir = new File(file.getParent());
                dir.mkdirs();
                file.createNewFile();
            }
            //文件输出流用于将数据写入文件
            FileOutputStream outStream = new FileOutputStream(file);
            outStream.write(str.getBytes());
            outStream.flush();
            outStream.close();
            System.out.println("生成成功");
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
