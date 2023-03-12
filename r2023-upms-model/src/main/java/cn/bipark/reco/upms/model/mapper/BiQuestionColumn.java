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

public final class BiQuestionColumn {

    public static final BiQuestion biQuestion = new BiQuestion();
	//columns START
    /**
     * id       db_column: id 
     */	
    public static final SqlColumn<Long> id = biQuestion.id;
    /**
     * questionnaireId       db_column: questionnaire_id 
     */	
    public static final SqlColumn<Long> questionnaireId = biQuestion.questionnaireId;
    /**
     * logicalType       db_column: logical_type 
     */	
    public static final SqlColumn<Integer> logicalType = biQuestion.logicalType;
    /**
     * businessType       db_column: business_type 
     */	
    public static final SqlColumn<Integer> businessType = biQuestion.businessType;
    /**
     * sequence       db_column: sequence 
     */	
    public static final SqlColumn<Integer> sequence = biQuestion.sequence;
    /**
     * isLibrary       db_column: is_library 
     */	
    public static final SqlColumn<Boolean> isLibrary = biQuestion.isLibrary;
    /**
     * isBuiltin       db_column: is_builtin 
     */	
    public static final SqlColumn<Boolean> isBuiltin = biQuestion.isBuiltin;
    /**
     * description       db_column: description 
     */	
    public static final SqlColumn<String> description = biQuestion.description;
    /**
     * inputerId       db_column: inputer_id 
     */	
    public static final SqlColumn<Long> inputerId = biQuestion.inputerId;
    /**
     * inputer       db_column: inputer 
     */	
    public static final SqlColumn<String> inputer = biQuestion.inputer;
    /**
     * updaterId       db_column: updater_id 
     */	
    public static final SqlColumn<Long> updaterId = biQuestion.updaterId;
    /**
     * updater       db_column: updater 
     */	
    public static final SqlColumn<String> updater = biQuestion.updater;
    /**
     * inputTime       db_column: input_time 
     */	
    public static final SqlColumn<Date> inputTime = biQuestion.inputTime;
    /**
     * updateTime       db_column: update_time 
     */	
    public static final SqlColumn<Date> updateTime = biQuestion.updateTime;
    /**
     * isDelete       db_column: is_delete 
     */	
    public static final SqlColumn<Boolean> isDelete = biQuestion.isDelete;
    /**
     * title       db_column: title 
     */	
    public static final SqlColumn<String> title = biQuestion.title;
    /**
     * 题型 1 单选，2多选       db_column: type 
     */	
    public static final SqlColumn<Integer> type = biQuestion.type;
    /**
     * 题目       db_column: content 
     */	
    public static final SqlColumn<String> content = biQuestion.content;
    /**
     * 答案       db_column: answer 
     */	
    public static final SqlColumn<String> answer = biQuestion.answer;
    /**
     * 选项 JSON存储       db_column: options 
     */	
    public static final SqlColumn<String> options = biQuestion.options;
    /**
     * 分值       db_column: score 
     */	
    public static final SqlColumn<Integer> score = biQuestion.score;
	//columns END

    @UpdateAudited
    @InputAudited
    @SoftDelete
    public static final class BiQuestion extends SqlTable {
        
       public final SqlColumn<Long> id = column(delimiterOf("id"), JDBCType.BIGINT);
       public final SqlColumn<Long> questionnaireId = column(delimiterOf("questionnaire_id"), JDBCType.BIGINT);
       public final SqlColumn<Integer> logicalType = column(delimiterOf("logical_type"), JDBCType.INTEGER);
       public final SqlColumn<Integer> businessType = column(delimiterOf("business_type"), JDBCType.INTEGER);
       public final SqlColumn<Integer> sequence = column(delimiterOf("sequence"), JDBCType.INTEGER);
       public final SqlColumn<Boolean> isLibrary = column(delimiterOf("is_library"), JDBCType.BIT);
       public final SqlColumn<Boolean> isBuiltin = column(delimiterOf("is_builtin"), JDBCType.BIT);
       public final SqlColumn<String> description = column(delimiterOf("description"), JDBCType.VARCHAR);
       public final SqlColumn<Long> inputerId = column(delimiterOf("inputer_id"), JDBCType.BIGINT);
       public final SqlColumn<String> inputer = column(delimiterOf("inputer"), JDBCType.VARCHAR);
       public final SqlColumn<Long> updaterId = column(delimiterOf("updater_id"), JDBCType.BIGINT);
       public final SqlColumn<String> updater = column(delimiterOf("updater"), JDBCType.VARCHAR);
       public final SqlColumn<Date> inputTime = column(delimiterOf("input_time"), JDBCType.TIMESTAMP);
       public final SqlColumn<Date> updateTime = column(delimiterOf("update_time"), JDBCType.TIMESTAMP);
       public final SqlColumn<Boolean> isDelete = column(delimiterOf("is_delete"), JDBCType.BIT);
       public final SqlColumn<String> title = column(delimiterOf("title"), JDBCType.VARCHAR);
       public final SqlColumn<Integer> type = column(delimiterOf("type"), JDBCType.INTEGER);
       public final SqlColumn<String> content = column(delimiterOf("content"), JDBCType.LONGVARCHAR);
       public final SqlColumn<String> answer = column(delimiterOf("answer"), JDBCType.VARCHAR);
       public final SqlColumn<String> options = column(delimiterOf("options"), JDBCType.LONGVARCHAR);
       public final SqlColumn<Integer> score = column(delimiterOf("score"), JDBCType.INTEGER);

        public BiQuestion() {
            super("bi_question");
        }
    }
}