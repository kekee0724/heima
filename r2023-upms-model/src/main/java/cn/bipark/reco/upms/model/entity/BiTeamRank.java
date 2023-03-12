package cn.bipark.reco.upms.model.entity;

import cn.bipark.reco.core.model.entity.Entity;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
/**
 * 团队排行榜 from DB table ： bi_team_rank.
 */
@ApiModel(value = "团队排行榜")
@Data
public class BiTeamRank implements Entity {

	//columns START
    /**
     * id       db_column: id 
     */	
	@ApiModelProperty(value = "id", example = "1234567890123", dataType = "String")
	private Long id;
    /**
     * 等级id       db_column: level_id 
     */	
	@ApiModelProperty(value = "等级id", example = "1234567890123", dataType = "String")
	private Long levelId;
    /**
     * 团队id       db_column: team_id 
     */	
	@ApiModelProperty(value = "团队id", example = "1234567890123", dataType = "String")
	private Long teamId;
    /**
     * 已参与人数       db_column: participants 
     */	
	@ApiModelProperty(value = "已参与人数", example = "1")
	private Integer participants;
    /**
     * 总人数       db_column: total_user 
     */	
	@ApiModelProperty(value = "总人数", example = "1")
	private Integer totalUser;
    /**
     * 总分数       db_column: total_score 
     */	
	@ApiModelProperty(value = "总分数", example = "1234567890123", dataType = "String")
	private Long totalScore;
    /**
     * 总时间       db_column: total_time 
     */	
	@ApiModelProperty(value = "总时间", example = "1234567890123", dataType = "String")
	private Long totalTime;
    /**
     * 团队平均分等于团队所有答题总分除以团队人员总数       db_column: average_score 
     */	
	@ApiModelProperty(value = "团队平均分等于团队所有答题总分除以团队人员总数", example = "")
	private Float averageScore;
    /**
     * 参与率等于参与人数除以团队人数       db_column: party_rate 
     */	
	@ApiModelProperty(value = "参与率等于参与人数除以团队人数", example = "")
	private Float partyRate;
    /**
     * 平均答题时间等于团队总时间除以参与人数       db_column: average_time 
     */	
	@ApiModelProperty(value = "平均答题时间等于团队总时间除以参与人数", example = "")
	private Float averageTime;
    /**
     * 排名数       db_column: rank_num 
     */	
	@ApiModelProperty(value = "排名数", example = "1")
	private Integer rankNum;
    /**
     * 是否已被淘汰 0-正常， 1-被淘汰       db_column: is_out 
     */	
	@ApiModelProperty(value = "是否已被淘汰 0-正常， 1-被淘汰", example = "1")
	private Integer isOut;
	//columns END


}