package cn.bipark.reco;

import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.config.DataSourceConfig;
import com.baomidou.mybatisplus.generator.config.GlobalConfig;
import com.baomidou.mybatisplus.generator.config.PackageConfig;
import com.baomidou.mybatisplus.generator.config.StrategyConfig;

public class Generator {
    public static void main(String[] args) {
        // 0.放置数据库相置
        DataSourceConfig dataSourceConfig = new DataSourceConfig
                .Builder("jdbc:mysql://localhost:3306/reco_upms?serverTimezone=UTC", "kekee", "0724")
                .build();
        // 1.获取代码生成器的对象
        AutoGenerator autoGenerator = new AutoGenerator(dataSourceConfig);


        // 2.设置全局配置
        GlobalConfig globalConfig = new GlobalConfig
                .Builder()
                .outputDir(System.getProperty("user.dir") + "/reco-generator/src/main/java") // 输出目录
                .disableOpenDir() //设置生成完华后是否打开生成代码所在的目录
                .author("黑马程序员") // 设置作者
                .fileOverride() // 设置是否覆盖原始生成的文件
                .build();

        /*globalConfig.setMapperName("%sDao");//设置数据层接口名,s为占位符,指代模块名称
        globalConfig.setIdType(IdType.ASSIGN_ID);//设置Id生成策略*/
        autoGenerator.global(globalConfig);

        // 3.设置包名相关配置
        PackageConfig packageInfo = new PackageConfig
                .Builder()
                .parent("cn.bipark.reco") // 设置生成的包名，与代码所在位置不冲突，二者叠加组成完整路径
                .entity("domain") // 设置实体类包名
                .mapper("dao")  // 设置数据层包名
                .xml("dao.xml") // 设置xml
                .build();
        autoGenerator.packageInfo(packageInfo);

        //策略设置

        StrategyConfig strategyConfig = new StrategyConfig
                .Builder()
                .addInclude("bi_user") //设置当前参与生成的表名，参数为可变参数
                .addTablePrefix("bi_") //设置数据库表的前缀名称，模块名=数据库表名-前缀名 例如：User=bi_user
                .build();

        /*strategyConfig.setRestControllerStyle(true); //设置是否启用Rest风格
        strategyConfig.setVersionFieldName("version"); //设置乐观锁字段名
        strategyConfig.setLogicDeleteFieldName("deleted"); //设置逻辑别除字段名
        strategyConfig.setEntityLombokModel(true); //设置是否启用Lombok*/
        autoGenerator.strategy(strategyConfig);

        // 2.执行生成操作
        autoGenerator.execute();
    }
}
