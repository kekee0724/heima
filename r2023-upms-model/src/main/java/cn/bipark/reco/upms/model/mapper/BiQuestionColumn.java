package cn.bipark.reco.upms.model.mapper;

import java.sql.JDBCType;

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

    
    public static final class BiQuestion extends SqlTable {
        
       public final SqlColumn<Long> id = column(delimiterOf("id"), JDBCType.BIGINT);
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