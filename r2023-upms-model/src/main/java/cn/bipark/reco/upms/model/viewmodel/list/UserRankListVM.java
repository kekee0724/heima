package cn.bipark.reco.upms.model.viewmodel.list;

import javax.validation.constraints.NotBlank;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@ApiModel(value = "个人排行榜-列表VM")
@Data
public class UserRankListVM {

 	/** 
	 * id 
	 */
	@ApiModelProperty(value = "id", example = "1234567890123", dataType = "String")
	private Long id;
 	/** 
	 * 等级id 
	 */
	@ApiModelProperty(value = "等级id", example = "1234567890123", dataType = "String")
	private Long levelId;
 	/** 
	 * 用户id 
	 */
	@ApiModelProperty(value = "用户id", example = "1234567890123", dataType = "String")
	private Long userId;
 	/** 
	 * 分数 
	 */
	@ApiModelProperty(value = "分数", example = "1")
	private Integer score;
 	/** 
	 * 用时 
	 */
	@ApiModelProperty(value = "用时", example = "1234567890123", dataType = "String")
	private Long usedTime;
 	/** 
	 * 团队id 
	 */
	@ApiModelProperty(value = "团队id", example = "1234567890123", dataType = "String")
	private Long teamId;
 	/** 
	 * 排名数 
	 */
	@ApiModelProperty(value = "排名数", example = "1")
	private Integer rankNum;
  

}
