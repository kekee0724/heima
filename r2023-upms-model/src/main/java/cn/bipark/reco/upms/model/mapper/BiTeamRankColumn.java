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

public final class BiTeamRankColumn {

    public static final BiTeamRank biTeamRank = new BiTeamRank();
	//columns START
    /**
     * id       db_column: id 
     */	
    public static final SqlColumn<Long> id = biTeamRank.id;
    /**
     * 等级id       db_column: level_id 
     */	
    public static final SqlColumn<Long> levelId = biTeamRank.levelId;
    /**
     * 团队id       db_column: team_id 
     */	
    public static final SqlColumn<Long> teamId = biTeamRank.teamId;
    /**
     * 已参与人数       db_column: participants 
     */	
    public static final SqlColumn<Integer> participants = biTeamRank.participants;
    /**
     * 总人数       db_column: total_user 
     */	
    public static final SqlColumn<Integer> totalUser = biTeamRank.totalUser;
    /**
     * 总分数       db_column: total_score 
     */	
    public static final SqlColumn<Long> totalScore = biTeamRank.totalScore;
    /**
     * 总时间       db_column: total_time 
     */	
    public static final SqlColumn<Long> totalTime = biTeamRank.totalTime;
    /**
     * 团队平均分等于团队所有答题总分除以团队人员总数       db_column: average_score 
     */	
    public static final SqlColumn<Float> averageScore = biTeamRank.averageScore;
    /**
     * 参与率等于参与人数除以团队人数       db_column: party_rate 
     */	
    public static final SqlColumn<Float> partyRate = biTeamRank.partyRate;
    /**
     * 平均答题时间等于团队总时间除以参与人数       db_column: average_time 
     */	
    public static final SqlColumn<Float> averageTime = biTeamRank.averageTime;
    /**
     * 排名数       db_column: rank_num 
     */	
    public static final SqlColumn<Integer> rankNum = biTeamRank.rankNum;
    /**
     * 是否已被淘汰 0-正常， 1-被淘汰       db_column: is_out 
     */	
    public static final SqlColumn<Integer> isOut = biTeamRank.isOut;
	//columns END

    
    public static final class BiTeamRank extends SqlTable {
        
       public final SqlColumn<Long> id = column(delimiterOf("id"), JDBCType.BIGINT);
       public final SqlColumn<Long> levelId = column(delimiterOf("level_id"), JDBCType.BIGINT);
       public final SqlColumn<Long> teamId = column(delimiterOf("team_id"), JDBCType.BIGINT);
       public final SqlColumn<Integer> participants = column(delimiterOf("participants"), JDBCType.INTEGER);
       public final SqlColumn<Integer> totalUser = column(delimiterOf("total_user"), JDBCType.INTEGER);
       public final SqlColumn<Long> totalScore = column(delimiterOf("total_score"), JDBCType.BIGINT);
       public final SqlColumn<Long> totalTime = column(delimiterOf("total_time"), JDBCType.BIGINT);
       public final SqlColumn<Float> averageScore = column(delimiterOf("average_score"), JDBCType.REAL);
       public final SqlColumn<Float> partyRate = column(delimiterOf("party_rate"), JDBCType.REAL);
       public final SqlColumn<Float> averageTime = column(delimiterOf("average_time"), JDBCType.REAL);
       public final SqlColumn<Integer> rankNum = column(delimiterOf("rank_num"), JDBCType.INTEGER);
       public final SqlColumn<Integer> isOut = column(delimiterOf("is_out"), JDBCType.INTEGER);

        public BiTeamRank() {
            super("bi_team_rank");
        }
    }
}