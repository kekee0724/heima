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

public final class BiSystemParamColumn {

    public static final BiSystemParam biSystemParam = new BiSystemParam();
	//columns START
    /**
     * id       db_column: id 
     */	
    public static final SqlColumn<Long> id = biSystemParam.id;
    /**
     * key值       db_column: param_key 
     */	
    public static final SqlColumn<String> paramKey = biSystemParam.paramKey;
    /**
     * value值       db_column: param_value 
     */	
    public static final SqlColumn<String> paramValue = biSystemParam.paramValue;
    /**
     * 创建人       db_column: gmt_create 
     */	
    public static final SqlColumn<String> gmtCreate = biSystemParam.gmtCreate;
    /**
     * 修改时间       db_column: gmt_update_time 
     */	
    public static final SqlColumn<Date> gmtUpdateTime = biSystemParam.gmtUpdateTime;
    /**
     * 修改人       db_column: gmt_update 
     */	
    public static final SqlColumn<String> gmtUpdate = biSystemParam.gmtUpdate;
    /**
     * 创建时间       db_column: gmt_create_time 
     */	
    public static final SqlColumn<Date> gmtCreateTime = biSystemParam.gmtCreateTime;
	//columns END

    
    public static final class BiSystemParam extends SqlTable {
        
       public final SqlColumn<Long> id = column(delimiterOf("id"), JDBCType.BIGINT);
       public final SqlColumn<String> paramKey = column(delimiterOf("param_key"), JDBCType.VARCHAR);
       public final SqlColumn<String> paramValue = column(delimiterOf("param_value"), JDBCType.VARCHAR);
       public final SqlColumn<String> gmtCreate = column(delimiterOf("gmt_create"), JDBCType.VARCHAR);
       public final SqlColumn<Date> gmtUpdateTime = column(delimiterOf("gmt_update_time"), JDBCType.TIMESTAMP);
       public final SqlColumn<String> gmtUpdate = column(delimiterOf("gmt_update"), JDBCType.VARCHAR);
       public final SqlColumn<Date> gmtCreateTime = column(delimiterOf("gmt_create_time"), JDBCType.TIMESTAMP);

        public BiSystemParam() {
            super("bi_system_param");
        }
    }
}