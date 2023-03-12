package cn.bipark.reco.upms.model.entity;

import cn.bipark.reco.core.model.entity.Entity;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
/**
 * 题目 from DB table ： bi_question.
 */
@ApiModel(value = "题目")
@Data
public class BiQuestion implements Entity {

	//columns START
    /**
     * id       db_column: id 
     */	
	@ApiModelProperty(value = "id", example = "1234567890123", dataType = "String")
	private Long id;
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