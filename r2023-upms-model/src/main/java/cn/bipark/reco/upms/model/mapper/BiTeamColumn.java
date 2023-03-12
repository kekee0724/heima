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

public final class BiTeamColumn {

    public static final BiTeam biTeam = new BiTeam();
	//columns START
    /**
     * id       db_column: id 
     */	
    public static final SqlColumn<Long> id = biTeam.id;
    /**
     * 团队名       db_column: team_name 
     */	
    public static final SqlColumn<String> teamName = biTeam.teamName;
    /**
     * 团队机构       db_column: team_org 
     */	
    public static final SqlColumn<String> teamOrg = biTeam.teamOrg;
	//columns END

    
    public static final class BiTeam extends SqlTable {
        
       public final SqlColumn<Long> id = column(delimiterOf("id"), JDBCType.BIGINT);
       public final SqlColumn<String> teamName = column(delimiterOf("team_name"), JDBCType.VARCHAR);
       public final SqlColumn<String> teamOrg = column(delimiterOf("team_org"), JDBCType.VARCHAR);

        public BiTeam() {
            super("bi_team");
        }
    }
}