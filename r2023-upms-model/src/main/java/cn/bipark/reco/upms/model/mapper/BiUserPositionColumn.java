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

public final class BiUserPositionColumn {

    public static final BiUserPosition biUserPosition = new BiUserPosition();
	//columns START
    /**
     * id       db_column: id 
     */	
    public static final SqlColumn<Long> id = biUserPosition.id;
    /**
     * 姓名       db_column: username 
     */	
    public static final SqlColumn<String> username = biUserPosition.username;
    /**
     * 纬度       db_column: lat 
     */	
    public static final SqlColumn<String> lat = biUserPosition.lat;
    /**
     * 经度       db_column: lng 
     */	
    public static final SqlColumn<String> lng = biUserPosition.lng;
	//columns END

    
    public static final class BiUserPosition extends SqlTable {
        
       public final SqlColumn<Long> id = column(delimiterOf("id"), JDBCType.BIGINT);
       public final SqlColumn<String> username = column(delimiterOf("username"), JDBCType.VARCHAR);
       public final SqlColumn<String> lat = column(delimiterOf("lat"), JDBCType.VARCHAR);
       public final SqlColumn<String> lng = column(delimiterOf("lng"), JDBCType.VARCHAR);

        public BiUserPosition() {
            super("bi_user_position");
        }
    }
}