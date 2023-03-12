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

public final class BiQuestionLevelColumn {

    public static final BiQuestionLevel biQuestionLevel = new BiQuestionLevel();
	//columns START
    /**
     * id       db_column: id 
     */	
    public static final SqlColumn<Long> id = biQuestionLevel.id;
    /**
     * 问题id       db_column: question_id 
     */	
    public static final SqlColumn<Long> questionId = biQuestionLevel.questionId;
    /**
     * 关卡id       db_column: level_id 
     */	
    public static final SqlColumn<Long> levelId = biQuestionLevel.levelId;
	//columns END

    
    public static final class BiQuestionLevel extends SqlTable {
        
       public final SqlColumn<Long> id = column(delimiterOf("id"), JDBCType.BIGINT);
       public final SqlColumn<Long> questionId = column(delimiterOf("question_id"), JDBCType.BIGINT);
       public final SqlColumn<Long> levelId = column(delimiterOf("level_id"), JDBCType.BIGINT);

        public BiQuestionLevel() {
            super("bi_question_level");
        }
    }
}