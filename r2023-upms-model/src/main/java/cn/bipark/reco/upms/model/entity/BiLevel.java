package cn.bipark.reco.upms.model.entity;

import cn.bipark.reco.core.model.entity.Entity;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
/**
 * 等级 from DB table ： bi_level.
 */
@ApiModel(value = "等级")
@Data
public class BiLevel implements Entity {

	//columns START
    /**
     * id       db_column: id 
     */	
	@ApiModelProperty(value = "id", example = "1234567890123", dataType = "String")
	private Long id;
    /**
     * 闯关标题       db_column: title 
     */	
	@ApiModelProperty(value = "闯关标题", example = "测试用的中文内容")
	private String title;
    /**
     * 闯关内容       db_column: content 
     */	
	@ApiModelProperty(value = "闯关内容", example = "测试用的中文内容")
	private String content;
    /**
     * 封面图片       db_column: cover 
     */	
	@ApiModelProperty(value = "封面图片", example = "测试用的中文内容")
	private String cover;
    /**
     * 开始时间       db_column: start_time 
     */	
	@JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
	@ApiModelProperty(value = "开始时间", example = "2020-10-12", dataType = "String")
	private Date startTime;
    /**
     * 结束时间       db_column: end_time 
     */	
	@JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
	@ApiModelProperty(value = "结束时间", example = "2020-10-12", dataType = "String")
	private Date endTime;
    /**
     * 挑战时间       db_column: retain_time 
     */	
	@ApiModelProperty(value = "挑战时间", example = "1234567890123", dataType = "String")
	private Long retainTime;
    /**
     * 是否为当前关卡       db_column: is_current 
     */	
	@ApiModelProperty(value = "是否为当前关卡", example = "1")
	private Integer isCurrent;
	//columns END


}