package cn.bipark.reco.upms.model.viewmodel.form;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@ApiModel(value = "用户定位-表单VM")
@Data
public class UserPositionFormVM {

	/** 
	 * 姓名 
	 */
	@Size(max = 255)
	@ApiModelProperty(value = "姓名", example = "测试用的中文内容")
	private String username;
	/** 
	 * 纬度 
	 */
	@Size(max = 255)
	@ApiModelProperty(value = "纬度", example = "测试用的中文内容")
	private String lat;
	/** 
	 * 经度 
	 */
	@Size(max = 255)
	@ApiModelProperty(value = "经度", example = "测试用的中文内容")
	private String lng;
  

}
