package cn.bipark.reco.order.model.entity;

import cn.bipark.reco.core.model.entity.Entity;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
/**
 * 未知对象 from DB table ： bi_order.
 */
@ApiModel(value = "未知对象")
@Data
public class BiOrder implements Entity {

	//columns START
    /**
     * id       db_column: id 
     */	
	@ApiModelProperty(value = "id", example = "1234567890123", dataType = "String")
	private Long id;
    /**
     * appName       db_column: app_name 
     */	
	@ApiModelProperty(value = "appName", example = "测试用的中文内容")
	private String appName;
    /**
     * appCode       db_column: app_code 
     */	
	@ApiModelProperty(value = "appCode", example = "测试用的中文内容")
	private String appCode;
    /**
     * moduleUrl       db_column: module_url 
     */	
	@ApiModelProperty(value = "moduleUrl", example = "测试用的中文内容")
	private String moduleUrl;
    /**
     * haveNav       db_column: have_nav 
     */	
	@ApiModelProperty(value = "haveNav", example = "false")
	private Boolean haveNav;
    /**
     * navType       db_column: nav_type 
     */	
	@ApiModelProperty(value = "navType", example = "1")
	private Integer navType;
    /**
     * isBuiltIn       db_column: is_built_in 
     */	
	@ApiModelProperty(value = "isBuiltIn", example = "false")
	private Boolean isBuiltIn;
    /**
     * isVirtual       db_column: is_virtual 
     */	
	@ApiModelProperty(value = "isVirtual", example = "false")
	private Boolean isVirtual;
    /**
     * iconUrl       db_column: icon_url 
     */	
	@ApiModelProperty(value = "iconUrl", example = "测试用的中文内容")
	private String iconUrl;
    /**
     * isValid       db_column: is_valid 
     */	
	@ApiModelProperty(value = "isValid", example = "false")
	private Boolean isValid;
    /**
     * sequence       db_column: sequence 
     */	
	@ApiModelProperty(value = "sequence", example = "1")
	private Integer sequence;
    /**
     * remarks       db_column: remarks 
     */	
	@ApiModelProperty(value = "remarks", example = "测试用的中文内容")
	private String remarks;
    /**
     * inputer       db_column: inputer 
     */	
	@ApiModelProperty(value = "inputer", example = "测试用的中文内容")
	private String inputer;
    /**
     * inputerId       db_column: inputer_id 
     */	
	@ApiModelProperty(value = "inputerId", example = "1234567890123", dataType = "String")
	private Long inputerId;
    /**
     * inputTime       db_column: input_time 
     */	
	@JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
	@ApiModelProperty(value = "inputTime", example = "2020-10-12", dataType = "String")
	private Date inputTime;
    /**
     * badgeUrl       db_column: badge_url 
     */	
	@ApiModelProperty(value = "badgeUrl", example = "测试用的中文内容")
	private String badgeUrl;
    /**
     * badgeCode       db_column: badge_code 
     */	
	@ApiModelProperty(value = "badgeCode", example = "测试用的中文内容")
	private String badgeCode;
	//columns END


}