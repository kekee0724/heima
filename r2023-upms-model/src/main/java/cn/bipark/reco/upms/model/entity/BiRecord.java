package cn.bipark.reco.upms.model.entity;

import cn.bipark.reco.core.model.entity.Entity;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
/**
 * 答题记录 from DB table ： bi_record.
 */
@ApiModel(value = "答题记录")
@Data
public class BiRecord implements Entity {

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
     * 淘汰状态， -1 未到关卡淘汰，0 通过，1 淘汰       db_column: pass 
     */	
	@ApiModelProperty(value = "淘汰状态， -1 未到关卡淘汰，0 通过，1 淘汰", example = "1")
	private Integer pass;
    /**
     * 正确率       db_column: correct_rate 
     */	
	@ApiModelProperty(value = "正确率", example = "")
	private Float correctRate;
    /**
     * 关卡得分       db_column: score 
     */	
	@ApiModelProperty(value = "关卡得分", example = "1")
	private Integer score;
    /**
     * 答题详情       db_column: details 
     */	
	@ApiModelProperty(value = "答题详情", example = "测试用的中文内容")
	private String details;
    /**
     * 开始时间       db_column: start_time 
     */	
	@JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
	@ApiModelProperty(value = "开始时间", example = "2020-10-12", dataType = "String")
	private Date startTime;
    /**
     * 闯关时间       db_column: level_time 
     */	
	@ApiModelProperty(value = "闯关时间", example = "1234567890123", dataType = "String")
	private Long levelTime;
    /**
     * 剩余时间       db_column: retain_time 
     */	
	@ApiModelProperty(value = "剩余时间", example = "1234567890123", dataType = "String")
	private Long retainTime;
    /**
     * 当前问题索引       db_column: cur_question 
     */	
	@ApiModelProperty(value = "当前问题索引", example = "1")
	private Integer curQuestion;
    /**
     * 提交状态 -1未提交， 0 正常提交， 1缓存未提交， 2 缓存提交 3 时间到强制提交       db_column: status 
     */	
	@ApiModelProperty(value = "提交状态 -1未提交， 0 正常提交， 1缓存未提交， 2 缓存提交 3 时间到强制提交", example = "1")
	private Integer status;
    /**
     * 创建时间       db_column: gmt_create_time 
     */	
	@JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
	@ApiModelProperty(value = "创建时间", example = "2020-10-12", dataType = "String")
	private Date gmtCreateTime;
    /**
     * 创建人       db_column: gmt_create 
     */	
	@ApiModelProperty(value = "创建人", example = "测试用的中文内容")
	private String gmtCreate;
    /**
     * 更新时间       db_column: gmt_update_time 
     */	
	@JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
	@ApiModelProperty(value = "更新时间", example = "2020-10-12", dataType = "String")
	private Date gmtUpdateTime;
    /**
     * 更新人       db_column: gmt_update 
     */	
	@ApiModelProperty(value = "更新人", example = "测试用的中文内容")
	private String gmtUpdate;
	//columns END


}