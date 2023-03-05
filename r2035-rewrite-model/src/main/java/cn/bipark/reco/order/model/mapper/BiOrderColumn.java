package cn.bipark.reco.order.model.mapper;

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

public final class BiOrderColumn {

    public static final BiOrder biOrder = new BiOrder();
	//columns START
    /**
     * id       db_column: id 
     */	
    public static final SqlColumn<Long> id = biOrder.id;
    /**
     * appName       db_column: app_name 
     */	
    public static final SqlColumn<String> appName = biOrder.appName;
    /**
     * appCode       db_column: app_code 
     */	
    public static final SqlColumn<String> appCode = biOrder.appCode;
    /**
     * moduleUrl       db_column: module_url 
     */	
    public static final SqlColumn<String> moduleUrl = biOrder.moduleUrl;
    /**
     * haveNav       db_column: have_nav 
     */	
    public static final SqlColumn<Boolean> haveNav = biOrder.haveNav;
    /**
     * navType       db_column: nav_type 
     */	
    public static final SqlColumn<Integer> navType = biOrder.navType;
    /**
     * isBuiltIn       db_column: is_built_in 
     */	
    public static final SqlColumn<Boolean> isBuiltIn = biOrder.isBuiltIn;
    /**
     * isVirtual       db_column: is_virtual 
     */	
    public static final SqlColumn<Boolean> isVirtual = biOrder.isVirtual;
    /**
     * iconUrl       db_column: icon_url 
     */	
    public static final SqlColumn<String> iconUrl = biOrder.iconUrl;
    /**
     * isValid       db_column: is_valid 
     */	
    public static final SqlColumn<Boolean> isValid = biOrder.isValid;
    /**
     * sequence       db_column: sequence 
     */	
    public static final SqlColumn<Integer> sequence = biOrder.sequence;
    /**
     * remarks       db_column: remarks 
     */	
    public static final SqlColumn<String> remarks = biOrder.remarks;
    /**
     * inputer       db_column: inputer 
     */	
    public static final SqlColumn<String> inputer = biOrder.inputer;
    /**
     * inputerId       db_column: inputer_id 
     */	
    public static final SqlColumn<Long> inputerId = biOrder.inputerId;
    /**
     * inputTime       db_column: input_time 
     */	
    public static final SqlColumn<Date> inputTime = biOrder.inputTime;
    /**
     * badgeUrl       db_column: badge_url 
     */	
    public static final SqlColumn<String> badgeUrl = biOrder.badgeUrl;
    /**
     * badgeCode       db_column: badge_code 
     */	
    public static final SqlColumn<String> badgeCode = biOrder.badgeCode;
	//columns END

    @InputAudited
    
    public static final class BiOrder extends SqlTable {
        
       public final SqlColumn<Long> id = column(delimiterOf("id"), JDBCType.BIGINT);
       public final SqlColumn<String> appName = column(delimiterOf("app_name"), JDBCType.VARCHAR);
       public final SqlColumn<String> appCode = column(delimiterOf("app_code"), JDBCType.VARCHAR);
       public final SqlColumn<String> moduleUrl = column(delimiterOf("module_url"), JDBCType.VARCHAR);
       public final SqlColumn<Boolean> haveNav = column(delimiterOf("have_nav"), JDBCType.BIT);
       public final SqlColumn<Integer> navType = column(delimiterOf("nav_type"), JDBCType.INTEGER);
       public final SqlColumn<Boolean> isBuiltIn = column(delimiterOf("is_built_in"), JDBCType.BIT);
       public final SqlColumn<Boolean> isVirtual = column(delimiterOf("is_virtual"), JDBCType.BIT);
       public final SqlColumn<String> iconUrl = column(delimiterOf("icon_url"), JDBCType.VARCHAR);
       public final SqlColumn<Boolean> isValid = column(delimiterOf("is_valid"), JDBCType.BIT);
       public final SqlColumn<Integer> sequence = column(delimiterOf("sequence"), JDBCType.INTEGER);
       public final SqlColumn<String> remarks = column(delimiterOf("remarks"), JDBCType.VARCHAR);
       public final SqlColumn<String> inputer = column(delimiterOf("inputer"), JDBCType.VARCHAR);
       public final SqlColumn<Long> inputerId = column(delimiterOf("inputer_id"), JDBCType.BIGINT);
       public final SqlColumn<Date> inputTime = column(delimiterOf("input_time"), JDBCType.TIMESTAMP);
       public final SqlColumn<String> badgeUrl = column(delimiterOf("badge_url"), JDBCType.VARCHAR);
       public final SqlColumn<String> badgeCode = column(delimiterOf("badge_code"), JDBCType.VARCHAR);

        public BiOrder() {
            super("bi_order");
        }
    }
}