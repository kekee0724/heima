package cn.bipark.reco.upms.model.mapper;

import cn.bipark.reco.core.domain.audit.DeleteAudited;
import cn.bipark.reco.core.domain.audit.UpdateAudited;
import cn.bipark.reco.core.domain.audit.UnitAudited;
import cn.bipark.reco.core.domain.audit.InputAudited;
import cn.bipark.reco.core.domain.audit.SoftDelete;
import java.sql.JDBCType;
import java.math.BigDecimal;
import java.util.Date;
import javax.annotation.Generated;
import org.mybatis.dynamic.sql.SqlColumn;
import org.mybatis.dynamic.sql.SqlTable;

import static cn.bipark.reco.core.util.DBUtils.delimiterOf;

public final class BiUserColumn {

    public static final BiUser biUser = new BiUser();
	//columns START
    /**
     * id       db_column: id 
     */	
    public static final SqlColumn<Long> id = biUser.id;
    /**
     * 用户名       db_column: username 
     */	
    public static final SqlColumn<String> username = biUser.username;
    /**
     * 密码       db_column: password 
     */	
    public static final SqlColumn<String> password = biUser.password;
    /**
     * 昵称       db_column: nick 
     */	
    public static final SqlColumn<String> nick = biUser.nick;
    /**
     * 邮箱       db_column: email 
     */	
    public static final SqlColumn<String> email = biUser.email;
    /**
     * 手机       db_column: phone 
     */	
    public static final SqlColumn<String> phone = biUser.phone;
    /**
     * 团队       db_column: team 
     */	
    public static final SqlColumn<String> team = biUser.team;
	//columns END

    
    public static final class BiUser extends SqlTable {
        
       public final SqlColumn<Long> id = column(delimiterOf("id"), JDBCType.BIGINT);
       public final SqlColumn<String> username = column(delimiterOf("username"), JDBCType.VARCHAR);
       public final SqlColumn<String> password = column(delimiterOf("password"), JDBCType.VARCHAR);
       public final SqlColumn<String> nick = column(delimiterOf("nick"), JDBCType.VARCHAR);
       public final SqlColumn<String> email = column(delimiterOf("email"), JDBCType.VARCHAR);
       public final SqlColumn<String> phone = column(delimiterOf("phone"), JDBCType.VARCHAR);
       public final SqlColumn<String> team = column(delimiterOf("team"), JDBCType.VARCHAR);

        public BiUser() {
            super("bi_user");
        }
    }
}