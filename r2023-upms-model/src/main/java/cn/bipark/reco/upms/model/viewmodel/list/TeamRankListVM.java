package cn.bipark.reco.upms.model.viewmodel.list;

import javax.validation.constraints.NotBlank;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@ApiModel(value = "团队排行榜-列表VM")
@Data
public class TeamRankListVM {

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
	 * 团队id 
	 */
	@ApiModelProperty(value = "团队id", example = "1234567890123", dataType = "String")
	private Long teamId;
 	/** 
	 * 已参与人数 
	 */
	@ApiModelProperty(value = "已参与人数", example = "1")
	private Integer participants;
 	/** 
	 * 总人数 
	 */
	@ApiModelProperty(value = "总人数", example = "1")
	private Integer totalUser;
 	/** 
	 * 总分数 
	 */
	@ApiModelProperty(value = "总分数", example = "1234567890123", dataType = "String")
	private Long totalScore;
 	/** 
	 * 总时间 
	 */
	@ApiModelProperty(value = "总时间", example = "1234567890123", dataType = "String")
	private Long totalTime;
 	/** 
	 * 团队平均分等于团队所有答题总分除以团队人员总数 
	 */
	@ApiModelProperty(value = "团队平均分等于团队所有答题总分除以团队人员总数", example = "")
	private Float averageScore;
 	/** 
	 * 参与率等于参与人数除以团队人数 
	 */
	@ApiModelProperty(value = "参与率等于参与人数除以团队人数", example = "")
	private Float partyRate;
 	/** 
	 * 平均答题时间等于团队总时间除以参与人数 
	 */
	@ApiModelProperty(value = "平均答题时间等于团队总时间除以参与人数", example = "")
	private Float averageTime;
 	/** 
	 * 排名数 
	 */
	@ApiModelProperty(value = "排名数", example = "1")
	private Integer rankNum;
 	/** 
	 * 是否已被淘汰 0-正常， 1-被淘汰 
	 */
	@ApiModelProperty(value = "是否已被淘汰 0-正常， 1-被淘汰", example = "1")
	private Integer isOut;
  

}
