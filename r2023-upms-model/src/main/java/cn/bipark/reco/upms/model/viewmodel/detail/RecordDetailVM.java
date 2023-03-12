package cn.bipark.reco.upms.model.viewmodel.detail;

import javax.validation.constraints.NotBlank;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@ApiModel(value = "答题记录-详情VM")
@Data
public class RecordDetailVM {

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
	 * 淘汰状态， -1 未到关卡淘汰，0 通过，1 淘汰 
	 */
	@ApiModelProperty(value = "淘汰状态， -1 未到关卡淘汰，0 通过，1 淘汰", example = "1")
	private Integer pass;
	/** 
	 * 正确率 
	 */
	@ApiModelProperty(value = "正确率", example = "")
	private Float correctRate;
	/** 
	 * 关卡得分 
	 */
	@ApiModelProperty(value = "关卡得分", example = "1")
	private Integer score;
	/** 
	 * 答题详情 
	 */
	@ApiModelProperty(value = "答题详情", example = "测试用的中文内容")
	private String details;
	/** 
	 * 开始时间 
	 */
	@JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
	@ApiModelProperty(value = "开始时间", example = "2020-10-12", dataType = "String")
	private Date startTime;
	/** 
	 * 闯关时间 
	 */
	@ApiModelProperty(value = "闯关时间", example = "1234567890123", dataType = "String")
	private Long levelTime;
	/** 
	 * 剩余时间 
	 */
	@ApiModelProperty(value = "剩余时间", example = "1234567890123", dataType = "String")
	private Long retainTime;
	/** 
	 * 当前问题索引 
	 */
	@ApiModelProperty(value = "当前问题索引", example = "1")
	private Integer curQuestion;
	/** 
	 * 提交状态 -1未提交， 0 正常提交， 1缓存未提交， 2 缓存提交 3 时间到强制提交 
	 */
	@ApiModelProperty(value = "提交状态 -1未提交， 0 正常提交， 1缓存未提交， 2 缓存提交 3 时间到强制提交", example = "1")
	private Integer status;
	/** 
	 * 创建时间 
	 */
	@JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
	@ApiModelProperty(value = "创建时间", example = "2020-10-12", dataType = "String")
	private Date gmtCreateTime;
	/** 
	 * 创建人 
	 */
	@ApiModelProperty(value = "创建人", example = "测试用的中文内容")
	private String gmtCreate;
	/** 
	 * 更新时间 
	 */
	@JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
	@ApiModelProperty(value = "更新时间", example = "2020-10-12", dataType = "String")
	private Date gmtUpdateTime;
	/** 
	 * 更新人 
	 */
	@ApiModelProperty(value = "更新人", example = "测试用的中文内容")
	private String gmtUpdate;


}
