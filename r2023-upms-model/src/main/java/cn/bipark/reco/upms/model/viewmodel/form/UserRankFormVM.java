package cn.bipark.reco.upms.model.viewmodel.form;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@ApiModel(value = "个人排行榜-表单VM")
@Data
public class UserRankFormVM {

	/** 
	 * 等级id 
	 */
	@ApiModelProperty(value = "等级id", example = "1234567890123", dataType = "String", required = true)
	private Long levelId;
	/** 
	 * 用户id 
	 */
	@ApiModelProperty(value = "用户id", example = "1234567890123", dataType = "String", required = true)
	private Long userId;
	/** 
	 * 分数 
	 */
	@ApiModelProperty(value = "分数", example = "1", required = true)
	private Integer score;
	/** 
	 * 用时 
	 */
	@ApiModelProperty(value = "用时", example = "1234567890123", dataType = "String", required = true)
	private Long usedTime;
	/** 
	 * 团队id 
	 */
	@ApiModelProperty(value = "团队id", example = "1234567890123", dataType = "String", required = true)
	private Long teamId;
	/** 
	 * 排名数 
	 */
	@ApiModelProperty(value = "排名数", example = "1", required = true)
	private Integer rankNum;
  

}
