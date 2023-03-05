package cn.bipark.reco.order.model.viewmodel.form;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@ApiModel(value = "未知对象-表单VM")
@Data
public class OrderFormVM {

	/** 
	 * appName 
	 */
	@Size(max = 255)
	@ApiModelProperty(value = "appName", example = "测试用的中文内容")
	private String appName;
	/** 
	 * appCode 
	 */
	@Size(max = 255)
	@ApiModelProperty(value = "appCode", example = "测试用的中文内容")
	private String appCode;
	/** 
	 * moduleUrl 
	 */
	@Size(max = 255)
	@ApiModelProperty(value = "moduleUrl", example = "测试用的中文内容")
	private String moduleUrl;
	/** 
	 * haveNav 
	 */
	@ApiModelProperty(value = "haveNav", example = "false")
	private Boolean haveNav;
	/** 
	 * navType 
	 */
	@ApiModelProperty(value = "navType", example = "1")
	private Integer navType;
	/** 
	 * isBuiltIn 
	 */
	@ApiModelProperty(value = "isBuiltIn", example = "false")
	private Boolean isBuiltIn;
	/** 
	 * isVirtual 
	 */
	@ApiModelProperty(value = "isVirtual", example = "false")
	private Boolean isVirtual;
	/** 
	 * iconUrl 
	 */
	@Size(max = 255)
	@ApiModelProperty(value = "iconUrl", example = "测试用的中文内容")
	private String iconUrl;
	/** 
	 * isValid 
	 */
	@ApiModelProperty(value = "isValid", example = "false")
	private Boolean isValid;
	/** 
	 * sequence 
	 */
	@ApiModelProperty(value = "sequence", example = "1")
	private Integer sequence;
	/** 
	 * remarks 
	 */
	@Size(max = 255)
	@ApiModelProperty(value = "remarks", example = "测试用的中文内容")
	private String remarks;
	/** 
	 * badgeUrl 
	 */
	@Size(max = 255)
	@ApiModelProperty(value = "badgeUrl", example = "测试用的中文内容")
	private String badgeUrl;
	/** 
	 * badgeCode 
	 */
	@Size(max = 255)
	@ApiModelProperty(value = "badgeCode", example = "测试用的中文内容")
	private String badgeCode;
  

}
