package cn.bipark.reco.upms.model.viewmodel.detail;

import javax.validation.constraints.NotBlank;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@ApiModel(value = "题目-详情VM")
@Data
public class QuestionDetailVM {

	/** 
	 * id 
	 */
	@ApiModelProperty(value = "id", example = "1234567890123", dataType = "String")
	private Long id;
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
