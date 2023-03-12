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

public final class BiUserLevelColumn {

    public static final BiUserLevel biUserLevel = new BiUserLevel();
	//columns START
    /**
     * id       db_column: id 
     */	
    public static final SqlColumn<Long> id = biUserLevel.id;
    /**
     * 用户id       db_column: user_id 
     */	
    public static final SqlColumn<Long> userId = biUserLevel.userId;
    /**
     * 关卡id       db_column: level_id 
     */	
    public static final SqlColumn<Long> levelId = biUserLevel.levelId;
    /**
     * 问题id集合       db_column: questions 
     */	
    public static final SqlColumn<String> questions = biUserLevel.questions;
	//columns END

    
    public static final class BiUserLevel extends SqlTable {
        
       public final SqlColumn<Long> id = column(delimiterOf("id"), JDBCType.BIGINT);
       public final SqlColumn<Long> userId = column(delimiterOf("user_id"), JDBCType.BIGINT);
       public final SqlColumn<Long> levelId = column(delimiterOf("level_id"), JDBCType.BIGINT);
       public final SqlColumn<String> questions = column(delimiterOf("questions"), JDBCType.LONGVARCHAR);

        public BiUserLevel() {
            super("bi_user_level");
        }
    }
}