package cn.bipark.reco.upms.model.viewmodel.list;

import javax.validation.constraints.NotBlank;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@ApiModel(value = "题目-列表VM")
@Data
public class QuestionListVM {

 	/** 
	 * id 
	 */
	@ApiModelProperty(value = "id", example = "1234567890123", dataType = "String")
	private Long id;
 	/** 
	 * questionnaireId 
	 */
	@ApiModelProperty(value = "questionnaireId", example = "1234567890123", dataType = "String")
	private Long questionnaireId;
 	/** 
	 * logicalType 
	 */
	@ApiModelProperty(value = "logicalType", example = "1")
	private Integer logicalType;
 	/** 
	 * businessType 
	 */
	@ApiModelProperty(value = "businessType", example = "1")
	private Integer businessType;
 	/** 
	 * sequence 
	 */
	@ApiModelProperty(value = "sequence", example = "1")
	private Integer sequence;
 	/** 
	 * isLibrary 
	 */
	@ApiModelProperty(value = "isLibrary", example = "false")
	private Boolean isLibrary;
 	/** 
	 * isBuiltin 
	 */
	@ApiModelProperty(value = "isBuiltin", example = "false")
	private Boolean isBuiltin;
 	/** 
	 * description 
	 */
	@ApiModelProperty(value = "description", example = "测试用的中文内容")
	private String description;
 	/** 
	 * inputerId 
	 */
	@ApiModelProperty(value = "inputerId", example = "1234567890123", dataType = "String")
	private Long inputerId;
 	/** 
	 * inputer 
	 */
	@ApiModelProperty(value = "inputer", example = "测试用的中文内容")
	private String inputer;
 	/** 
	 * inputTime 
	 */
	@JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
	@ApiModelProperty(value = "inputTime", example = "2020-10-12", dataType = "String")
	private Date inputTime;
 	/** 
	 * title 
	 */
	@ApiModelProperty(value = "title", example = "测试用的中文内容")
	private String title;
 	/** 
	 * 题型 1 单选，2多选 
	 */
	@ApiModelProperty(value = "题型 1 单选，2多选", example = "1")
	private Integer type;
 	/** 
	 * 题目 
	 */
	@ApiModelProperty(value = "题目", example = "测试用的中文内容")
	private String content;
 	/** 
	 * 答案 
	 */
	@ApiModelProperty(value = "答案", example = "测试用的中文内容")
	private String answer;
 	/** 
	 * 选项 JSON存储 
	 */
	@ApiModelProperty(value = "选项 JSON存储", example = "测试用的中文内容")
	private String options;
 	/** 
	 * 分值 
	 */
	@ApiModelProperty(value = "分值", example = "1")
	private Integer score;
  

}
