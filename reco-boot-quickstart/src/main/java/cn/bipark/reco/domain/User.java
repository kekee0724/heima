package cn.bipark.reco.domain;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("bi_user")
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
     * 密码       db_column: password
     */
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
}
