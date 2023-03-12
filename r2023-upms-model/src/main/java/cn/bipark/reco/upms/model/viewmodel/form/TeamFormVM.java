package cn.bipark.reco.upms.model.viewmodel.form;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@ApiModel(value = "团队-表单VM")
@Data
public class TeamFormVM {

	/** 
	 * 团队名 
	 */
	@Size(max = 255)
	@ApiModelProperty(value = "团队名", example = "测试用的中文内容")
	private String teamName;
	/** 
	 * 团队机构 
	 */
	@Size(max = 255)
	@ApiModelProperty(value = "团队机构", example = "测试用的中文内容")
	private String teamOrg;
  

}
