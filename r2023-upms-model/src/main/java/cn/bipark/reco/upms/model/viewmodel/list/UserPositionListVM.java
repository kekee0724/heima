package cn.bipark.reco.upms.model.viewmodel.list;

import javax.validation.constraints.NotBlank;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@ApiModel(value = "用户定位-列表VM")
@Data
public class UserPositionListVM {

 	/** 
	 * id 
	 */
	@ApiModelProperty(value = "id", example = "1234567890123", dataType = "String")
	private Long id;
 	/** 
	 * 姓名 
	 */
	@ApiModelProperty(value = "姓名", example = "测试用的中文内容")
	private String username;
 	/** 
	 * 纬度 
	 */
	@ApiModelProperty(value = "纬度", example = "测试用的中文内容")
	private String lat;
 	/** 
	 * 经度 
	 */
	@ApiModelProperty(value = "经度", example = "测试用的中文内容")
	private String lng;
  

}
