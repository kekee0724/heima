package cn.bipark.reco.upms.model.viewmodel.detail;

import javax.validation.constraints.NotBlank;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@ApiModel(value = "团队-详情VM")
@Data
public class TeamDetailVM {

	/** 
	 * id 
	 */
	@ApiModelProperty(value = "id", example = "1234567890123", dataType = "String")
	private Long id;
	/** 
	 * 团队名 
	 */
	@ApiModelProperty(value = "团队名", example = "测试用的中文内容")
	private String teamName;
	/** 
	 * 团队机构 
	 */
	@ApiModelProperty(value = "团队机构", example = "测试用的中文内容")
	private String teamOrg;


}
