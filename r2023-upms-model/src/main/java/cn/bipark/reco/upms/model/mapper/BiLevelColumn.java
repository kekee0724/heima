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

public final class BiLevelColumn {

    public static final BiLevel biLevel = new BiLevel();
	//columns START
    /**
     * id       db_column: id 
     */	
    public static final SqlColumn<Long> id = biLevel.id;
    /**
     * 闯关标题       db_column: title 
     */	
    public static final SqlColumn<String> title = biLevel.title;
    /**
     * 闯关内容       db_column: content 
     */	
    public static final SqlColumn<String> content = biLevel.content;
    /**
     * 封面图片       db_column: cover 
     */	
    public static final SqlColumn<String> cover = biLevel.cover;
    /**
     * 开始时间       db_column: start_time 
     */	
    public static final SqlColumn<Date> startTime = biLevel.startTime;
    /**
     * 结束时间       db_column: end_time 
     */	
    public static final SqlColumn<Date> endTime = biLevel.endTime;
    /**
     * 挑战时间       db_column: retain_time 
     */	
    public static final SqlColumn<Long> retainTime = biLevel.retainTime;
    /**
     * 是否为当前关卡       db_column: is_current 
     */	
    public static final SqlColumn<Integer> isCurrent = biLevel.isCurrent;
	//columns END

    
    public static final class BiLevel extends SqlTable {
        
       public final SqlColumn<Long> id = column(delimiterOf("id"), JDBCType.BIGINT);
       public final SqlColumn<String> title = column(delimiterOf("title"), JDBCType.VARCHAR);
       public final SqlColumn<String> content = column(delimiterOf("content"), JDBCType.VARCHAR);
       public final SqlColumn<String> cover = column(delimiterOf("cover"), JDBCType.VARCHAR);
       public final SqlColumn<Date> startTime = column(delimiterOf("start_time"), JDBCType.TIMESTAMP);
       public final SqlColumn<Date> endTime = column(delimiterOf("end_time"), JDBCType.TIMESTAMP);
       public final SqlColumn<Long> retainTime = column(delimiterOf("retain_time"), JDBCType.BIGINT);
       public final SqlColumn<Integer> isCurrent = column(delimiterOf("is_current"), JDBCType.TINYINT);

        public BiLevel() {
            super("bi_level");
        }
    }
}