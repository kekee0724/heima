package cn.bipark.reco.upms.model.entity;

import cn.bipark.reco.core.model.entity.Entity;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
/**
 * 题目等级 from DB table ： bi_question_level.
 */
@ApiModel(value = "题目等级")
@Data
public class BiQuestionLevel implements Entity {

	//columns START
    /**
     * id       db_column: id 
     */	
	@ApiModelProperty(value = "id", example = "1234567890123", dataType = "String")
	private Long id;
    /**
     * 问题id       db_column: question_id 
     */	
	@ApiModelProperty(value = "问题id", example = "1234567890123", dataType = "String")
	private Long questionId;
    /**
     * 关卡id       db_column: level_id 
     */	
	@ApiModelProperty(value = "关卡id", example = "1234567890123", dataType = "String")
	private Long levelId;
	//columns END


}