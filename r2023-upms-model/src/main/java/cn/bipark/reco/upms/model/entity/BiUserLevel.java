package cn.bipark.reco.upms.model.entity;

import cn.bipark.reco.core.model.entity.Entity;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
/**
 * 用户等级 from DB table ： bi_user_level.
 */
@ApiModel(value = "用户等级")
@Data
public class BiUserLevel implements Entity {

	//columns START
    /**
     * id       db_column: id 
     */	
	@ApiModelProperty(value = "id", example = "1234567890123", dataType = "String")
	private Long id;
    /**
     * 用户id       db_column: user_id 
     */	
	@ApiModelProperty(value = "用户id", example = "1234567890123", dataType = "String")
	private Long userId;
    /**
     * 关卡id       db_column: level_id 
     */	
	@ApiModelProperty(value = "关卡id", example = "1234567890123", dataType = "String")
	private Long levelId;
    /**
     * 问题id集合       db_column: questions 
     */	
	@ApiModelProperty(value = "问题id集合", example = "测试用的中文内容")
	private String questions;
	//columns END


}