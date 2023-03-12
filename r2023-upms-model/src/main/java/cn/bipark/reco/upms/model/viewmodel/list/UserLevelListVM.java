package cn.bipark.reco.upms.model.viewmodel.list;

import javax.validation.constraints.NotBlank;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@ApiModel(value = "用户等级-列表VM")
@Data
public class UserLevelListVM {

 	/** 
	 * id 
	 */
	@ApiModelProperty(value = "id", example = "1234567890123", dataType = "String")
	private Long id;
 	/** 
	 * 用户id 
	 */
	@ApiModelProperty(value = "用户id", example = "1234567890123", dataType = "String")
	private Long userId;
 	/** 
	 * 关卡id 
	 */
	@ApiModelProperty(value = "关卡id", example = "1234567890123", dataType = "String")
	private Long levelId;
 	/** 
	 * 问题id集合 
	 */
	@ApiModelProperty(value = "问题id集合", example = "测试用的中文内容")
	private String questions;
  

}
