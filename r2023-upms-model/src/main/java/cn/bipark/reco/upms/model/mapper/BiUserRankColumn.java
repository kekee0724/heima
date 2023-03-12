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

public final class BiUserRankColumn {

    public static final BiUserRank biUserRank = new BiUserRank();
	//columns START
    /**
     * id       db_column: id 
     */	
    public static final SqlColumn<Long> id = biUserRank.id;
    /**
     * 等级id       db_column: level_id 
     */	
    public static final SqlColumn<Long> levelId = biUserRank.levelId;
    /**
     * 用户id       db_column: user_id 
     */	
    public static final SqlColumn<Long> userId = biUserRank.userId;
    /**
     * 分数       db_column: score 
     */	
    public static final SqlColumn<Integer> score = biUserRank.score;
    /**
     * 用时       db_column: used_time 
     */	
    public static final SqlColumn<Long> usedTime = biUserRank.usedTime;
    /**
     * 团队id       db_column: team_id 
     */	
    public static final SqlColumn<Long> teamId = biUserRank.teamId;
    /**
     * 排名数       db_column: rank_num 
     */	
    public static final SqlColumn<Integer> rankNum = biUserRank.rankNum;
	//columns END

    
    public static final class BiUserRank extends SqlTable {
        
       public final SqlColumn<Long> id = column(delimiterOf("id"), JDBCType.BIGINT);
       public final SqlColumn<Long> levelId = column(delimiterOf("level_id"), JDBCType.BIGINT);
       public final SqlColumn<Long> userId = column(delimiterOf("user_id"), JDBCType.BIGINT);
       public final SqlColumn<Integer> score = column(delimiterOf("score"), JDBCType.INTEGER);
       public final SqlColumn<Long> usedTime = column(delimiterOf("used_time"), JDBCType.BIGINT);
       public final SqlColumn<Long> teamId = column(delimiterOf("team_id"), JDBCType.BIGINT);
       public final SqlColumn<Integer> rankNum = column(delimiterOf("rank_num"), JDBCType.INTEGER);

        public BiUserRank() {
            super("bi_user_rank");
        }
    }
}