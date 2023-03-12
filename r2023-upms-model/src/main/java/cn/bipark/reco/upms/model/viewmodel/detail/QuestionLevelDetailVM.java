package cn.bipark.reco.upms.model.viewmodel.detail;

import javax.validation.constraints.NotBlank;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@ApiModel(value = "题目等级-详情VM")
@Data
public class QuestionLevelDetailVM {

	/** 
	 * id 
	 */
	@ApiModelProperty(value = "id", example = "1234567890123", dataType = "String")
	private Long id;
	/** 
	 * 问题id 
	 */
	@ApiModelProperty(value = "问题id", example = "1234567890123", dataType = "String")
	private Long questionId;
	/** 
	 * 关卡id 
	 */
	@ApiModelProperty(value = "关卡id", example = "1234567890123", dataType = "String")
	private Long levelId;


}
