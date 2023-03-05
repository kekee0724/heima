package cn.bipark.reco.order.model.viewmodel.list;

import javax.validation.constraints.NotBlank;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@ApiModel(value = "未知对象-列表VM")
@Data
public class OrderListVM {

 	/** 
	 * id 
	 */
	@ApiModelProperty(value = "id", example = "1234567890123", dataType = "String")
	private Long id;
 	/** 
	 * appName 
	 */
	@ApiModelProperty(value = "appName", example = "测试用的中文内容")
	private String appName;
 	/** 
	 * appCode 
	 */
	@ApiModelProperty(value = "appCode", example = "测试用的中文内容")
	private String appCode;
 	/** 
	 * moduleUrl 
	 */
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
	@ApiModelProperty(value = "remarks", example = "测试用的中文内容")
	private String remarks;
 	/** 
	 * inputer 
	 */
	@ApiModelProperty(value = "inputer", example = "测试用的中文内容")
	private String inputer;
 	/** 
	 * inputerId 
	 */
	@ApiModelProperty(value = "inputerId", example = "1234567890123", dataType = "String")
	private Long inputerId;
 	/** 
	 * inputTime 
	 */
	@JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
	@ApiModelProperty(value = "inputTime", example = "2020-10-12", dataType = "String")
	private Date inputTime;
 	/** 
	 * badgeUrl 
	 */
	@ApiModelProperty(value = "badgeUrl", example = "测试用的中文内容")
	private String badgeUrl;
 	/** 
	 * badgeCode 
	 */
	@ApiModelProperty(value = "badgeCode", example = "测试用的中文内容")
	private String badgeCode;
  

}
