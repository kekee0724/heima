package cn.bipark.reco.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.math.BigDecimal;

@Data
@TableName("bi_user") // 表名与编码开发设计不同步
public class User {
    //columns START
    /**
     * 不同的表应用不同的id生成策略
     * 日志：自增（1，2，3，4，…)
     * 购物订单：特殊规则(FQ23948AK3843)
     * 外卖单：关联地区日期等信息（1004202003143491)
     * 关系表：可省略id
     * ...
     *
     * AUTO(O)：使用数据库id自增策略控制id生成
     * NONE(1)：不设置id生成策略
     * INPUT(2)：用户手工输入id
     * ASSIGN_ID(3)：雪花算法生成id（可兼容数值型与字符串型)
     * ASSIGN_UUID(4)：以UUID生成算法作为id生成策略
     *
     * id       db_column: id
     */
    @TableId(type = IdType.AUTO)
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
