package cn.bipark.reco.upms.model.viewmodel.form;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@ApiModel(value = "题目等级-表单VM")
@Data
public class QuestionLevelFormVM {

	/** 
	 * 问题id 
	 */
	@ApiModelProperty(value = "问题id", example = "1234567890123", dataType = "String", required = true)
	private Long questionId;
	/** 
	 * 关卡id 
	 */
	@ApiModelProperty(value = "关卡id", example = "1234567890123", dataType = "String", required = true)
	private Long levelId;
  

}
