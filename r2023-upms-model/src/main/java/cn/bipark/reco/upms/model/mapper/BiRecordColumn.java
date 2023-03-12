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

public final class BiRecordColumn {

    public static final BiRecord biRecord = new BiRecord();
	//columns START
    /**
     * id       db_column: id 
     */	
    public static final SqlColumn<Long> id = biRecord.id;
    /**
     * 用户id       db_column: user_id 
     */	
    public static final SqlColumn<Long> userId = biRecord.userId;
    /**
     * 关卡id       db_column: level_id 
     */	
    public static final SqlColumn<Long> levelId = biRecord.levelId;
    /**
     * 淘汰状态， -1 未到关卡淘汰，0 通过，1 淘汰       db_column: pass 
     */	
    public static final SqlColumn<Integer> pass = biRecord.pass;
    /**
     * 正确率       db_column: correct_rate 
     */	
    public static final SqlColumn<Float> correctRate = biRecord.correctRate;
    /**
     * 关卡得分       db_column: score 
     */	
    public static final SqlColumn<Integer> score = biRecord.score;
    /**
     * 答题详情       db_column: details 
     */	
    public static final SqlColumn<String> details = biRecord.details;
    /**
     * 开始时间       db_column: start_time 
     */	
    public static final SqlColumn<Date> startTime = biRecord.startTime;
    /**
     * 闯关时间       db_column: level_time 
     */	
    public static final SqlColumn<Long> levelTime = biRecord.levelTime;
    /**
     * 剩余时间       db_column: retain_time 
     */	
    public static final SqlColumn<Long> retainTime = biRecord.retainTime;
    /**
     * 当前问题索引       db_column: cur_question 
     */	
    public static final SqlColumn<Integer> curQuestion = biRecord.curQuestion;
    /**
     * 提交状态 -1未提交， 0 正常提交， 1缓存未提交， 2 缓存提交 3 时间到强制提交       db_column: status 
     */	
    public static final SqlColumn<Integer> status = biRecord.status;
    /**
     * 创建时间       db_column: gmt_create_time 
     */	
    public static final SqlColumn<Date> gmtCreateTime = biRecord.gmtCreateTime;
    /**
     * 创建人       db_column: gmt_create 
     */	
    public static final SqlColumn<String> gmtCreate = biRecord.gmtCreate;
    /**
     * 更新时间       db_column: gmt_update_time 
     */	
    public static final SqlColumn<Date> gmtUpdateTime = biRecord.gmtUpdateTime;
    /**
     * 更新人       db_column: gmt_update 
     */	
    public static final SqlColumn<String> gmtUpdate = biRecord.gmtUpdate;
	//columns END

    
    public static final class BiRecord extends SqlTable {
        
       public final SqlColumn<Long> id = column(delimiterOf("id"), JDBCType.BIGINT);
       public final SqlColumn<Long> userId = column(delimiterOf("user_id"), JDBCType.BIGINT);
       public final SqlColumn<Long> levelId = column(delimiterOf("level_id"), JDBCType.BIGINT);
       public final SqlColumn<Integer> pass = column(delimiterOf("pass"), JDBCType.INTEGER);
       public final SqlColumn<Float> correctRate = column(delimiterOf("correct_rate"), JDBCType.REAL);
       public final SqlColumn<Integer> score = column(delimiterOf("score"), JDBCType.INTEGER);
       public final SqlColumn<String> details = column(delimiterOf("details"), JDBCType.LONGVARCHAR);
       public final SqlColumn<Date> startTime = column(delimiterOf("start_time"), JDBCType.TIMESTAMP);
       public final SqlColumn<Long> levelTime = column(delimiterOf("level_time"), JDBCType.BIGINT);
       public final SqlColumn<Long> retainTime = column(delimiterOf("retain_time"), JDBCType.BIGINT);
       public final SqlColumn<Integer> curQuestion = column(delimiterOf("cur_question"), JDBCType.INTEGER);
       public final SqlColumn<Integer> status = column(delimiterOf("status"), JDBCType.INTEGER);
       public final SqlColumn<Date> gmtCreateTime = column(delimiterOf("gmt_create_time"), JDBCType.TIMESTAMP);
       public final SqlColumn<String> gmtCreate = column(delimiterOf("gmt_create"), JDBCType.VARCHAR);
       public final SqlColumn<Date> gmtUpdateTime = column(delimiterOf("gmt_update_time"), JDBCType.TIMESTAMP);
       public final SqlColumn<String> gmtUpdate = column(delimiterOf("gmt_update"), JDBCType.VARCHAR);

        public BiRecord() {
            super("bi_record");
        }
    }
}