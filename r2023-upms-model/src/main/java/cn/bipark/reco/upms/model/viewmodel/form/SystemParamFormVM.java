package cn.bipark.reco.upms.model.viewmodel.form;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@ApiModel(value = "系统参数-表单VM")
@Data
public class SystemParamFormVM {

	/** 
	 * key值 
	 */
	@Size(max = 255)
	@ApiModelProperty(value = "key值", example = "测试用的中文内容")
	private String paramKey;
	/** 
	 * value值 
	 */
	@Size(max = 255)
	@ApiModelProperty(value = "value值", example = "测试用的中文内容")
	private String paramValue;
	/** 
	 * 创建人 
	 */
	@Size(max = 255)
	@ApiModelProperty(value = "创建人", example = "测试用的中文内容")
	private String gmtCreate;
	/** 
	 * 修改时间 
	 */
	@JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
	@ApiModelProperty(value = "修改时间", example = "2020-10-12", dataType = "String")
	private Date gmtUpdateTime;
	/** 
	 * 修改人 
	 */
	@Size(max = 255)
	@ApiModelProperty(value = "修改人", example = "测试用的中文内容")
	private String gmtUpdate;
	/** 
	 * 创建时间 
	 */
	@JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
	@ApiModelProperty(value = "创建时间", example = "2020-10-12", dataType = "String")
	private Date gmtCreateTime;
  

}
