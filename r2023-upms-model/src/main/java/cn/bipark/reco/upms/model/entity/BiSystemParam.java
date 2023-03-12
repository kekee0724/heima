package cn.bipark.reco.upms.model.entity;

import cn.bipark.reco.core.model.entity.Entity;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
/**
 * 系统参数 from DB table ： bi_system_param.
 */
@ApiModel(value = "系统参数")
@Data
public class BiSystemParam implements Entity {

	//columns START
    /**
     * id       db_column: id 
     */	
	@ApiModelProperty(value = "id", example = "1234567890123", dataType = "String")
	private Long id;
    /**
     * key值       db_column: param_key 
     */	
	@ApiModelProperty(value = "key值", example = "测试用的中文内容")
	private String paramKey;
    /**
     * value值       db_column: param_value 
     */	
	@ApiModelProperty(value = "value值", example = "测试用的中文内容")
	private String paramValue;
    /**
     * 创建人       db_column: gmt_create 
     */	
	@ApiModelProperty(value = "创建人", example = "测试用的中文内容")
	private String gmtCreate;
    /**
     * 修改时间       db_column: gmt_update_time 
     */	
	@JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
	@ApiModelProperty(value = "修改时间", example = "2020-10-12", dataType = "String")
	private Date gmtUpdateTime;
    /**
     * 修改人       db_column: gmt_update 
     */	
	@ApiModelProperty(value = "修改人", example = "测试用的中文内容")
	private String gmtUpdate;
    /**
     * 创建时间       db_column: gmt_create_time 
     */	
	@JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
	@ApiModelProperty(value = "创建时间", example = "2020-10-12", dataType = "String")
	private Date gmtCreateTime;
	//columns END


}