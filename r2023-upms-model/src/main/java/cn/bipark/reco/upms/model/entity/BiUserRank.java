package cn.bipark.reco.upms.model.entity;

import cn.bipark.reco.core.model.entity.Entity;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
/**
 * 个人排行榜 from DB table ： bi_user_rank.
 */
@ApiModel(value = "个人排行榜")
@Data
public class BiUserRank implements Entity {

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
     * 用户id       db_column: user_id 
     */	
	@ApiModelProperty(value = "用户id", example = "1234567890123", dataType = "String")
	private Long userId;
    /**
     * 分数       db_column: score 
     */	
	@ApiModelProperty(value = "分数", example = "1")
	private Integer score;
    /**
     * 用时       db_column: used_time 
     */	
	@ApiModelProperty(value = "用时", example = "1234567890123", dataType = "String")
	private Long usedTime;
    /**
     * 团队id       db_column: team_id 
     */	
	@ApiModelProperty(value = "团队id", example = "1234567890123", dataType = "String")
	private Long teamId;
    /**
     * 排名数       db_column: rank_num 
     */	
	@ApiModelProperty(value = "排名数", example = "1")
	private Integer rankNum;
	//columns END


}