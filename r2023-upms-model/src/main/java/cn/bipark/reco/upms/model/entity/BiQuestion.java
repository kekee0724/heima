package cn.bipark.reco.upms.model.entity;

import cn.bipark.reco.core.model.entity.Entity;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
/**
 * 未知对象 from DB table ： bi_question.
 */
@ApiModel(value = "未知对象")
@Data
public class BiQuestion implements Entity {

	//columns START
    /**
     * id       db_column: id 
     */	
	@ApiModelProperty(value = "id", example = "1234567890123", dataType = "String")
	private Long id;
    /**
     * questionnaireId       db_column: questionnaire_id 
     */	
	@ApiModelProperty(value = "questionnaireId", example = "1234567890123", dataType = "String")
	private Long questionnaireId;
    /**
     * logicalType       db_column: logical_type 
     */	
	@ApiModelProperty(value = "logicalType", example = "1")
	private Integer logicalType;
    /**
     * businessType       db_column: business_type 
     */	
	@ApiModelProperty(value = "businessType", example = "1")
	private Integer businessType;
    /**
     * sequence       db_column: sequence 
     */	
	@ApiModelProperty(value = "sequence", example = "1")
	private Integer sequence;
    /**
     * isLibrary       db_column: is_library 
     */	
	@ApiModelProperty(value = "isLibrary", example = "false")
	private Boolean isLibrary;
    /**
     * isBuiltin       db_column: is_builtin 
     */	
	@ApiModelProperty(value = "isBuiltin", example = "false")
	private Boolean isBuiltin;
    /**
     * description       db_column: description 
     */	
	@ApiModelProperty(value = "description", example = "测试用的中文内容")
	private String description;
    /**
     * inputerId       db_column: inputer_id 
     */	
	@ApiModelProperty(value = "inputerId", example = "1234567890123", dataType = "String")
	private Long inputerId;
    /**
     * inputer       db_column: inputer 
     */	
	@ApiModelProperty(value = "inputer", example = "测试用的中文内容")
	private String inputer;
    /**
     * updaterId       db_column: updater_id 
     */	
	@ApiModelProperty(value = "updaterId", example = "1234567890123", dataType = "String")
	private Long updaterId;
    /**
     * updater       db_column: updater 
     */	
	@ApiModelProperty(value = "updater", example = "测试用的中文内容")
	private String updater;
    /**
     * inputTime       db_column: input_time 
     */	
	@JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
	@ApiModelProperty(value = "inputTime", example = "2020-10-12", dataType = "String")
	private Date inputTime;
    /**
     * updateTime       db_column: update_time 
     */	
	@JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
	@ApiModelProperty(value = "updateTime", example = "2020-10-12", dataType = "String")
	private Date updateTime;
    /**
     * isDelete       db_column: is_delete 
     */	
	@ApiModelProperty(value = "isDelete", example = "false")
	private Boolean isDelete;
    /**
     * title       db_column: title 
     */	
	@ApiModelProperty(value = "title", example = "测试用的中文内容")
	private String title;
    /**
     * 题型 1 单选，2多选       db_column: type 
     */	
	@ApiModelProperty(value = "题型 1 单选，2多选", example = "1")
	private Integer type;
    /**
     * 题目       db_column: content 
     */	
	@ApiModelProperty(value = "题目", example = "测试用的中文内容")
	private String content;
    /**
     * 答案       db_column: answer 
     */	
	@ApiModelProperty(value = "答案", example = "测试用的中文内容")
	private String answer;
    /**
     * 选项 JSON存储       db_column: options 
     */	
	@ApiModelProperty(value = "选项 JSON存储", example = "测试用的中文内容")
	private String options;
    /**
     * 分值       db_column: score 
     */	
	@ApiModelProperty(value = "分值", example = "1")
	private Integer score;
	//columns END


}