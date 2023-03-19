package cn.bipark.reco.domain;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.math.BigDecimal;

@Data
@TableName("bi_user") // 表名与编码开发设计不同步
public class User {
    //columns START
    /**
     * id       db_column: id
     */
    private Long id;
    /**
     * 用户名       db_column: username
     */
    private String username;
    /**
     * 采用默认查询开放了更多的字段查看权限
     * 密码       db_column: password
     */
    @TableField(value = "password", select = false)
    private String password;
    /**
     * 昵称       db_column: nick
     */
    private String nick;
    /**
     * 邮箱       db_column: email
     */
    private String email;
    /**
     * 手机       db_column: phone
     */
    private String phone;
    /**
     * 团队       db_column: team
     */
    private String team;
    //columns END
    /**
     * 余额       db_column: money
     */
    private BigDecimal money;
    //columns END
    /**
     * 编码中添加了数据库中未定义的属性
     * 是否在线
     */
    @TableField(exist = false)
    private Integer online;
}
