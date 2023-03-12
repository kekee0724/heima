package cn.bipark.reco.upms.model.viewmodel.form;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@ApiModel(value = "未知对象-表单VM")
@Data
public class QuestionFormVM {

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
	@Size(max = 255)
	@ApiModelProperty(value = "description", example = "测试用的中文内容")
	private String description;
	/** 
	 * title 
	 */
	@Size(max = 255)
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
	@Size(max = 65535)
	@ApiModelProperty(value = "题目", example = "测试用的中文内容")
	private String content;
	/** 
	 * 答案 
	 */
	@Size(max = 255)
	@ApiModelProperty(value = "答案", example = "测试用的中文内容")
	private String answer;
	/** 
	 * 选项 JSON存储 
	 */
	@Size(max = 65535)
	@ApiModelProperty(value = "选项 JSON存储", example = "测试用的中文内容")
	private String options;
	/** 
	 * 分值 
	 */
	@ApiModelProperty(value = "分值", example = "1")
	private Integer score;
  

}
